import 'package:dio/dio.dart';

import 'paginator.dart';
import 'models/models.dart';

class ItakuApi {
  final Dio _dio;
  static final String version = "1.0.0";
  static final String userAgent = "dart_itaku_api/$version";

  /// Constructs an Itaku API instance.
  ///
  /// [transformer] specifies a [Dio] transformer (i.e. using isolates to
  /// decode JSON when using Flutter).
  ItakuApi({String? token, Transformer? transformer})
      : _dio = Dio(BaseOptions(
          baseUrl: "https://itaku.ee/api",
          headers: {
            "User-Agent": userAgent,
          },
        )) {
    if (token != null) {
      _dio.options.headers["Authorization"] = "Token $token";
    }
    if (transformer != null) {
      _dio.transformer = transformer;
    }
  }

  bool get isAuthenticated => _dio.options.headers.containsKey("Authorization");

  Future<Map<String, dynamic>> get(String url,
      [Map<String, dynamic>? query, bool checkAuth = false]) async {
    if (checkAuth && !isAuthenticated) {
      throw ItakuUnauthenticatedException("Not authenticated.");
    }
    final res = await _dio.get(url, queryParameters: query);
    return res.data!;
  }

  Future<List<T>> getList<T>(String url,
      [Map<String, dynamic>? query, bool checkAuth = false]) async {
    if (checkAuth && !isAuthenticated) {
      throw ItakuUnauthenticatedException("Not authenticated.");
    }
    final res = await _dio.get(url, queryParameters: query);
    return List<T>.from(res.data!);
  }

  Future<T> getRaw<T>(String url,
      [Map<String, dynamic>? query, bool checkAuth = false]) async {
    if (checkAuth && !isAuthenticated) {
      throw ItakuUnauthenticatedException("Not authenticated.");
    }
    final res = await _dio.get(url, queryParameters: query);
    return res.data!;
  }

  Future<Map<String, dynamic>> post(String url,
      [Map<String, dynamic>? data, bool checkAuth = false]) async {
    if (checkAuth && !isAuthenticated) {
      throw ItakuUnauthenticatedException("Not authenticated.");
    }
    final res = await _dio.post(url, data: data);
    return res.data!;
  }

  Future<List<T>> postList<T>(String url,
      [Map<String, dynamic>? data, bool checkAuth = false]) async {
    if (checkAuth && !isAuthenticated) {
      throw ItakuUnauthenticatedException("Not authenticated.");
    }
    final res = await _dio.post(url, data: data);
    return List<T>.from(res.data!);
  }

  Future<void> delete(String url, [bool checkAuth = false]) async {
    if (checkAuth && !isAuthenticated) {
      throw ItakuUnauthenticatedException("Not authenticated.");
    }
    await _dio.delete(url);
  }

  Future<String> getVersion() async {
    final res = await getRaw<String>("/status/version/");
    return res;
  }

  Future<ItakuPaginator<ItakuFeedItem>> getFeed({
    ItakuOrdering ordering = ItakuOrdering.hotnessScore,
    bool descending = true,
    bool following = false,
    ItakuDateRange dateRange = ItakuDateRange.today,
    Iterable<ItakuMaturityRating>? maturityRating = const [
      ItakuMaturityRating.sfw
    ],
    bool useBlacklist = true,
    int page = 1,
    int pageSize = 10,
    bool hideReshares = false,
    ItakuVisibility visibility = ItakuVisibility.public,
    int? owner,
    String? cursor,
  }) async {
    final query = {
      "ordering": (descending ? "-" : "") + ordering.key,
      "by_following": following,
      "date_range": dateRange.key,
      "hide_reshares": hideReshares,
      if (maturityRating != null)
        "maturity_rating": maturityRating.map((m) => m.key).toList(),
      "use_blacklist": useBlacklist,
      "page": page,
      "page_size": pageSize,
      "visibility": visibility.key,
      if (owner != null) "owner": owner,
      if (cursor != null) "cursor": cursor,
    };

    final res = await get("/feed/", query);
    return ItakuPaginator<ItakuFeedItem>.fromJson(
        res, ItakuFeedItem.fromJson, this);
  }

  Future<ItakuPaginator<ItakuImage>> getImages({
    ItakuOrdering ordering = ItakuOrdering.numLikes,
    bool descending = true,
    bool following = false,
    ItakuDateRange dateRange = ItakuDateRange.allTime,
    Iterable<ItakuMaturityRating>? maturityRating = const [
      ItakuMaturityRating.sfw
    ],
    bool likedByYou = false,
    bool isVideo = false,
    String? text,
    List<String>? requiredTags,
    List<String>? negativeTags,
    List<String>? optionalTags,
    int? bookmarkFolder,
    bool useBlacklist = true,
    int page = 1,
    int pageSize = 30,
    ItakuVisibility visibility = ItakuVisibility.public,
    int? owner,
    String? cursor,
  }) async {
    final query = {
      "ordering": (descending ? "-" : "") + ordering.key,
      "by_following": following,
      "date_range": dateRange.key,
      if (maturityRating != null)
        "maturity_rating": maturityRating.map((m) => m.key).toList(),
      "liked_by_you": likedByYou,
      if (isVideo) "is_video": isVideo,
      if (text != null) "text": text,
      if (requiredTags != null) "required_tags": requiredTags,
      if (negativeTags != null) "negative_tags": negativeTags,
      if (optionalTags != null) "optional_tags": optionalTags,
      if (bookmarkFolder != null) "bookmark_folder": bookmarkFolder,
      "use_blacklist": useBlacklist,
      "page": page,
      "page_size": pageSize,
      "visibility": visibility.key,
      if (owner != null) "owner": owner,
      if (cursor != null) "cursor": cursor,
    };

    final res = await get("/galleries/images/", query);
    return ItakuPaginator<ItakuImage>.fromJson(res, ItakuImage.fromJson, this);
  }

  Future<ItakuImageFull> getImage(int id) async {
    final res = await get("/galleries/images/$id/");
    return ItakuImageFull.fromJson(res);
  }

  Future<ItakuPaginator<ItakuComment>> getImageComments(
    int id, {
    int page = 1,
    int pageSize = 30,
    int childPageSize = 100,
  }) async {
    final query = {
      "page": page,
      "page_size": pageSize,
      "child_page_size": childPageSize
    };

    final res = await get("/galleries/images/$id/comments/", query);
    return ItakuPaginator<ItakuComment>.fromJson(
        res, ItakuComment.fromJson, this);
  }

  Future<ItakuLikeResponse> likeImage(int id) async {
    final res = await get("/galleries/images/$id/like/", null, true);
    return ItakuLikeResponse.fromJson(res);
  }

  Future<ItakuLikeResponse> reshareImage(int id,
      {required bool profileOnly}) async {
    final query = {
      "profile_only": profileOnly,
    };
    final res = await get("/galleries/images/$id/reshare/", query, true);
    return ItakuLikeResponse.fromJson(res);
  }

  Future<ItakuPaginator<ItakuPost>> getPosts({
    ItakuOrdering ordering = ItakuOrdering.dateAdded,
    bool descending = true,
    bool following = false,
    ItakuDateRange dateRange = ItakuDateRange.allTime,
    Iterable<ItakuMaturityRating>? maturityRating = const [
      ItakuMaturityRating.sfw
    ],
    bool? hasText,
    List<String>? requiredTags,
    List<String>? negativeTags,
    List<String>? optionalTags,
    bool useBlacklist = true,
    int page = 1,
    int pageSize = 30,
    ItakuVisibility visibility = ItakuVisibility.public,
    int? owner,
    String? cursor,
  }) async {
    final query = {
      "ordering": (descending ? "-" : "") + ordering.key,
      "by_following": following,
      "date_range": dateRange.key,
      if (maturityRating != null)
        "maturity_rating": maturityRating.map((m) => m.key).toList(),
      if (hasText != null) "has_text": hasText,
      if (requiredTags != null) "required_tags": requiredTags,
      if (negativeTags != null) "negative_tags": negativeTags,
      if (optionalTags != null) "optional_tags": optionalTags,
      "use_blacklist": useBlacklist,
      "page": page,
      "page_size": pageSize,
      "visibility": visibility.key,
      if (owner != null) "owner": owner,
      if (cursor != null) "cursor": cursor,
    };

    final res = await get("/posts/", query);
    return ItakuPaginator<ItakuPost>.fromJson(res, ItakuPost.fromJson, this);
  }

  Future<ItakuPost> getPost(int id) async {
    final res = await get("/posts/$id/");
    return ItakuPost.fromJson(res);
  }

  Future<ItakuPaginator<ItakuComment>> getPostComments(
    int id, {
    int page = 1,
    int pageSize = 30,
    int childPageSize = 100,
  }) async {
    final query = {
      "page": page,
      "page_size": pageSize,
      "child_page_size": childPageSize
    };

    final res = await get("/posts/$id/comments/", query);
    return ItakuPaginator<ItakuComment>.fromJson(
        res, ItakuComment.fromJson, this);
  }

  Future<ItakuLikeResponse> likePost(int id) async {
    final res = await get("/posts/$id/like/", null, true);
    return ItakuLikeResponse.fromJson(res);
  }

  Future<ItakuLikeResponse> resharePost(int id,
      {required bool profileOnly}) async {
    final query = {
      "profile_only": profileOnly,
    };
    final res = await get("/posts/$id/reshare/", query, true);
    return ItakuLikeResponse.fromJson(res);
  }

  Future<ItakuPaginator<ItakuCommission>> getCommissions({
    ItakuOrdering ordering = ItakuOrdering.dateAdded,
    bool descending = true,
    bool following = false,
    ItakuDateRange dateRange = ItakuDateRange.allTime,
    Iterable<ItakuMaturityRating>? maturityRating = const [
      ItakuMaturityRating.sfw,
      ItakuMaturityRating.any
    ],
    Iterable<ItakuCommissionType>? commissionType = const [
      ItakuCommissionType.request,
      ItakuCommissionType.offer,
      ItakuCommissionType.adopt,
      ItakuCommissionType.ych
    ],
    bool activeOnly = true,
    bool isAuction = false,
    bool likedByYou = false,
    bool useBlacklist = true,
    List<String>? requiredTags,
    List<String>? negativeTags,
    List<String>? optionalTags,
    int page = 1,
    int pageSize = 9,
    String? cursor,
  }) async {
    final query = {
      "ordering": (descending ? "-" : "") + ordering.key,
      "by_following": following,
      "date_range": dateRange.key,
      if (maturityRating != null)
        "maturity_rating": maturityRating.map((m) => m.key).toList(),
      if (commissionType != null)
        "comm_type": commissionType.map((c) => c.key).toList(),
      "active_only": activeOnly,
      "is_auction": isAuction,
      "liked_by_you": likedByYou,
      "use_blacklist": useBlacklist,
      if (requiredTags != null) "required_tags": requiredTags,
      if (negativeTags != null) "negative_tags": negativeTags,
      if (optionalTags != null) "optional_tags": optionalTags,
      "page": page,
      "page_size": pageSize,
      if (cursor != null) "cursor": cursor,
    };

    final res = await get("/commissions/", query);
    return ItakuPaginator<ItakuCommission>.fromJson(
        res, ItakuCommission.fromJson, this);
  }

  Future<ItakuCommissionFull> getCommission(int id) async {
    final res = await get("/commissions/$id/");
    return ItakuCommissionFull.fromJson(res);
  }

  Future<ItakuPaginator<ItakuComment>> getCommissionComments(
    int id, {
    int page = 1,
    int pageSize = 30,
    int childPageSize = 100,
  }) async {
    final query = {
      "page": page,
      "page_size": pageSize,
      "child_page_size": childPageSize
    };

    final res = await get("/commissions/$id/comments/", query);
    return ItakuPaginator<ItakuComment>.fromJson(
        res, ItakuComment.fromJson, this);
  }

  Future<List<ItakuImage>> getCommissionFinishedImages(int id) async {
    final res = await getList<Map<String, dynamic>>(
        "/commissions/$id/get_finished_work_gallery_images/");
    return res.map((img) => ItakuImage.fromJson(img)).toList();
  }

  Future<ItakuLikeResponse> likeCommission(int id) async {
    final res = await get("/commissions/$id/like/", null, true);
    return ItakuLikeResponse.fromJson(res);
  }

  Future<ItakuLikeResponse> reshareCommission(int id,
      {required bool profileOnly}) async {
    final query = {
      "profile_only": profileOnly,
    };
    final res = await get("/commissions/$id/reshare/", query, true);
    return ItakuLikeResponse.fromJson(res);
  }

  Future<ItakuPaginator<ItakuUser>> getUserProfiles({
    ItakuOrdering ordering = ItakuOrdering.dateAdded,
    bool descending = true,
    bool isArtist = false,
    bool takingComms = false,
    bool isSupporter = false,
    bool sfwOnly = true,
    bool hasAdProfile = false,
    bool isStaff = false,
    String? ownerName,
    List<String>? requiredTags,
    List<String>? negativeTags,
    List<String>? optionalTags,
    String? followersOf,
    String? followedBy,
    int? bookmarkFolder,
    int page = 1,
    int pageSize = 16,
    String? cursor,
  }) async {
    final query = {
      "ordering": (descending ? "-" : "") + ordering.key,
      "is_artist": isArtist,
      "taking_comms": takingComms,
      "is_supporter": isSupporter,
      "sfw_only": sfwOnly,
      "has_ad_profile": hasAdProfile,
      "is_staff": isStaff,
      if (ownerName != null) "owner_name": ownerName,
      if (requiredTags != null) "required_tags": requiredTags,
      if (negativeTags != null) "negative_tags": negativeTags,
      if (optionalTags != null) "optional_tags": optionalTags,
      if (followersOf != null) "followers_of": followersOf,
      if (followedBy != null) "followed_by": followedBy,
      if (bookmarkFolder != null) "bookmark_folder": bookmarkFolder,
      "page": page,
      "page_size": pageSize,
      if (cursor != null) "cursor": cursor,
    };

    final res = await get("/user_profiles/", query);
    return ItakuPaginator<ItakuUser>.fromJson(res, ItakuUser.fromJson, this);
  }

  Future<ItakuUserProfile> getUserProfile(String username) async {
    final res = await get("/user_profiles/$username/");
    return ItakuUserProfile.fromJson(res);
  }

  Future<ItakuNSFWProfile?> getNSFWProfile(String username) async {
    try {
      final res = await get("/nsfw_profiles/$username/");
      return ItakuNSFWProfile.fromJson(res);
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) {
        return null;
      }
      rethrow;
    }
  }

  Future<List<ItakuCommissionTier>> getUserCommissionTiers(
      String username) async {
    final res = await getList<Map<String, dynamic>>(
        "/user_profiles/$username/commission_info/");
    return res.map((img) => ItakuCommissionTier.fromJson(img)).toList();
  }

  Future<List<ItakuBookmarkFolder>> getUserImageBookmarkFolders(
      int owner) async {
    final query = {"owner": owner};
    final res = await getList<Map<String, dynamic>>(
        "/gallery_bookmark_folders/", query);
    return res.map((img) => ItakuBookmarkFolder.fromJson(img)).toList();
  }

  Future<List<ItakuBookmarkFolder>> getUserUserBookmarkFolders(
      int owner) async {
    // perhaps this function should be slightly renamed :p
    final query = {"owner": owner};
    final res =
        await getList<Map<String, dynamic>>("/user_bookmark_folders/", query);
    return res.map((img) => ItakuBookmarkFolder.fromJson(img)).toList();
  }

  Future<ItakuUserLatestContent> getUserLatestContent(String username) async {
    final res = await get("/user_profiles/$username/latest_content/");
    return ItakuUserLatestContent.fromJson(res);
  }

  Future<ItakuPaginator<ItakuTag>> getTags({
    String? name,
    String? type = "",
    bool showAllMaturity = true,
  }) async {
    final query = {
      if (name != null) "name": name,
      if (type != null) "type": type,
      "show_all_maturity": showAllMaturity,
    };

    final res = await get("/tags/", query);
    return ItakuPaginator<ItakuTag>.fromJson(res, ItakuTag.fromJson, this);
  }

  Future<ItakuPaginator<ItakuTagFull>> getTagsDetailed({
    ItakuOrdering ordering = ItakuOrdering.numObjects,
    bool descending = true,
    Iterable<ItakuMaturityRating>? maturityRating = const [
      ItakuMaturityRating.sfw
    ],
    bool noDescription = false,
    bool isRoot = false,
    bool isSynonym = false,
    bool youEdited = false,
    String? nameStartsWith,
    String? nameContains,
    int page = 1,
    int pageSize = 15,
  }) async {
    final query = {
      "ordering": (descending ? "-" : "") + ordering.key,
      if (maturityRating != null)
        "maturity_rating": maturityRating.map((m) => m.key).toList(),
      "no_description": noDescription,
      "is_root": isRoot,
      "is_synonym": isSynonym,
      "you_edited": youEdited,
      "name_istartswith": nameStartsWith,
      "name_icontains": nameContains,
      "page": page,
      "page_size": pageSize,
    };

    final res = await get("/tags/detailed/", query);
    return ItakuPaginator<ItakuTagFull>.fromJson(
        res, ItakuTagFull.fromJson, this);
  }

  Future<ItakuTagFull> getTag(int id) async {
    final res = await get("/tags/$id/");
    return ItakuTagFull.fromJson(res);
  }

  Future<List<ItakuTagCompact>> getSuggestedTags(List<String> tags) async {
    final res = await postList("/tags/suggest_tags/", {"tags": tags});
    return res.map((set) => ItakuTagCompact.fromJson(set)).toList();
  }

  Future<List<ItakuTagCompact>> getDefaultSuggestedTags() async {
    final res =
        await getList<Map<String, dynamic>>("/tags/default_suggested_tags/");
    return res.map((set) => ItakuTagCompact.fromJson(set)).toList();
  }

  Future<ItakuAuthUserLogin> login(String username, String password) async {
    final data = {"username": username, "password": password};
    try {
      final res = await post("/auth/login/", data);
      return ItakuAuthUserLogin.fromJson(res);
    } on DioException catch (e) {
      if (e.response?.statusCode == 400) {
        throw ItakuAuthException.fromJson(e.response!.data);
      }
      rethrow;
    }
  }

  Future<ItakuAuthUser?> setAuthToken(String token,
      {bool verify = false}) async {
    try {
      _dio.options.headers["Authorization"] = "Token $token";
      if (verify) {
        return getAuthUser();
      } else {
        return null;
      }
    } catch (e) {
      _dio.options.headers.remove("Authorization");
      rethrow;
    }
  }

  void clearAuthToken() {
    _dio.options.headers.remove("Authorization");
  }

  Future<ItakuAuthUser> getAuthUser() async {
    final res = await get("/auth/user/", null, true);
    return ItakuAuthUser.fromJson(res);
  }

  Future<ItakuAuthUserMeta> getAuthUserMeta() async {
    final res = await get("/auth/user_metas/", null, true);
    return ItakuAuthUserMeta.fromJson(res);
  }

  Future<List<ItakuAuthUserTagSet>> getAuthUserTagSets() async {
    final res = await getList<Map<String, dynamic>>("/tag_sets/", null, true);
    return res.map((set) => ItakuAuthUserTagSet.fromJson(set)).toList();
  }

  Future<ItakuAuthUserTagSet> createAuthUserTagSet(
      String name, List<ItakuTagCompact> tags) async {
    final res = await post("/tag_sets/",
        {"name": name, "tags": tags.map((tag) => tag.toJson()).toList()}, true);
    return ItakuAuthUserTagSet.fromJson(res);
  }

  Future<void> deleteAuthUserTagSet(int id) async {
    return delete("/tag_sets/$id/", true);
  }

  Future<ItakuAuthUserBlacklistedBlockedUsers>
      getAuthUserBlacklistedBlockedUsers() async {
    final res =
        await get("/user_metas/blacklisted_and_blocked_users/", null, true);
    return ItakuAuthUserBlacklistedBlockedUsers.fromJson(res);
  }

  Future<bool> getAuthUserEmailVerified() async {
    final res = await getRaw<bool>("/email/verified/", null, true);
    return res;
  }

  Future<ItakuPaginator<ItakuAuthUserNotification>> getAuthUserNotifications({
    int page = 1,
    int pageSize = 10,
    List<String>? actionType,
    List<String>? excludeAction,
  }) async {
    final query = {
      "page": page,
      "page_size": pageSize,
      if (actionType != null) "action_type": actionType,
      if (excludeAction != null) "exclude_action": excludeAction
    };

    final res = await get("/notifications/", query, true);
    return ItakuPaginator<ItakuAuthUserNotification>.fromJson(
        res, ItakuAuthUserNotification.fromJson, this);
  }

  Future<ItakuAuthUserUnreadNotificationCounts>
      getAuthUserUnreadNotificationCounts() async {
    final res = await get("/notifications/get_bulk_unread_notifs", null, true);
    return ItakuAuthUserUnreadNotificationCounts.fromJson(res);
  }

  Future<void> readAuthUserNotifications() async {
    await get("/notifications/read_all/", null, true);
  }
}
