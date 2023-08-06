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

  Future<Map<String, dynamic>> request(String url) async {
    return (await _dio.get(url)).data!;
  }

  Future<ItakuPaginator<ItakuFeed>> getFeed({
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
      if (cursor != null) "cursor": cursor,
    };

    Response<Map<String, dynamic>> res =
        await _dio.get("/feed", queryParameters: query);
    return ItakuPaginator<ItakuFeed>.fromJson(
        res.data!, ItakuFeed.fromJson, this);
  }
}
