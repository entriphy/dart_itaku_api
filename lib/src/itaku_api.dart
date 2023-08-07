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
    return (await _dio.get(url, queryParameters: query)).data!;
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
      "page": page,
      "page_size": pageSize,
      if (cursor != null) "cursor": cursor,
    };

    final res = await request("/commissions/", query);
    return ItakuPaginator<ItakuCommission>.fromJson(
        res, ItakuCommission.fromJson, this);
  }
}
