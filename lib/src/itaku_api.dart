import 'package:dio/dio.dart';

import 'paginator.dart';
import 'models/models.dart';

class ItakuApi {
  final Dio _dio;
  static final String version = "1.0.0";
  static final String userAgent = "dart_itaku_api/$version";

  ItakuApi()
      : _dio = Dio(BaseOptions(
          baseUrl: "https://itaku.ee/api",
          headers: {
            "User-Agent": userAgent,
          },
        ));

  Future<Map<String, dynamic>> request(String url,
      [Map<String, dynamic>? query]) async {
    final res = await _dio.get(url, queryParameters: query);
    return res.data!;
  }

  Future<List<T>> requestList<T>(String url,
      [Map<String, dynamic>? query]) async {
    final res = await _dio.get(url, queryParameters: query);
    return List<T>.from(res.data!);
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

    final res = await request("/feed/", query);
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

    final res = await request("/galleries/images/", query);
    return ItakuPaginator<ItakuImage>.fromJson(res, ItakuImage.fromJson, this);
  }

  Future<ItakuImageFull> getImage(int id) async {
    final res = await request("/galleries/images/$id/");
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

    final res = await request("/galleries/images/$id/comments/", query);
    return ItakuPaginator<ItakuComment>.fromJson(
        res, ItakuComment.fromJson, this);
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

    final res = await request("/posts/", query);
    return ItakuPaginator<ItakuPost>.fromJson(res, ItakuPost.fromJson, this);
  }

  Future<ItakuPost> getPost(int id) async {
    final res = await request("/posts/$id/");
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

    final res = await request("/posts/$id/comments/", query);
    return ItakuPaginator<ItakuComment>.fromJson(
        res, ItakuComment.fromJson, this);
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

    final res = await request("/commissions/", query);
    return ItakuPaginator<ItakuCommission>.fromJson(
        res, ItakuCommission.fromJson, this);
  }

  Future<ItakuCommissionFull> getCommission(int id) async {
    final res = await request("/commissions/$id/");
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

    final res = await request("/commissions/$id/comments/", query);
    return ItakuPaginator<ItakuComment>.fromJson(
        res, ItakuComment.fromJson, this);
  }

  Future<List<ItakuImage>> getCommissionFinishedImages(int id) async {
    final res = await requestList<Map<String, dynamic>>(
        "/commissions/$id/get_finished_work_gallery_images/");
    return res.map((img) => ItakuImage.fromJson(img)).toList();
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

    final res = await request("/user_profiles/", query);
    return ItakuPaginator<ItakuUser>.fromJson(res, ItakuUser.fromJson, this);
  }

  Future<ItakuUserProfile> getUserProfile(String username) async {
    final res = await request("/user_profiles/$username/");
    return ItakuUserProfile.fromJson(res);
  }

  Future<ItakuNSFWProfile?> getNSFWProfile(String username) async {
    try {
      final res = await request("/nsfw_profiles/$username/");
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
    final res = await requestList<Map<String, dynamic>>(
        "/user_profiles/$username/commission_info/");
    return res.map((img) => ItakuCommissionTier.fromJson(img)).toList();
  }

  Future<List<ItakuBookmarkFolder>> getUserImageBookmarkFolders(
      int owner) async {
    final query = {"owner": owner};
    final res = await requestList<Map<String, dynamic>>(
        "/gallery_bookmark_folders/", query);
    return res.map((img) => ItakuBookmarkFolder.fromJson(img)).toList();
  }

  Future<List<ItakuBookmarkFolder>> getUserUserBookmarkFolders(
      int owner) async {
    // perhaps this function should be slightly renamed :p
    final query = {"owner": owner};
    final res = await requestList<Map<String, dynamic>>(
        "/user_bookmark_folders/", query);
    return res.map((img) => ItakuBookmarkFolder.fromJson(img)).toList();
  }

  Future<ItakuPaginator<ItakuTagFull>> getTags({
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

    final res = await request("/tags/detailed/", query);
    return ItakuPaginator<ItakuTagFull>.fromJson(
        res, ItakuTagFull.fromJson, this);
  }

  Future<ItakuTagFull> getTag(int id) async {
    final res = await request("/tags/$id/");
    return ItakuTagFull.fromJson(res);
  }
}
