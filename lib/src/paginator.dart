import 'package:itaku_api/itaku_api.dart';

class ItakuPaginator<T> {
  final _PaginatorLinks _links;
  final List<T> _results;
  Function(Map<String, dynamic>) _fromJson;
  ItakuApi _api; // I'm a little iffy about passing the API object to this...

  ItakuPaginator._(this._links, this._results, this._fromJson, this._api);

  bool get hasNext => _links.next != null;
  bool get hasPrevious => _links.previous != null;
  String get next => _links.next!;
  String get previous => _links.previous!;
  String get nextCursor => Uri.parse(next).queryParameters["cursor"]!;
  String get previousCursor => Uri.parse(previous).queryParameters["cursor"]!;
  List<T> get results => _results;

  Future<ItakuPaginator<T>> nextPage() async {
    final res = await _api.get(_links.next!);
    return ItakuPaginator<T>.fromJson(res, _fromJson, _api);
  }

  Future<ItakuPaginator<T>> previousPage() async {
    final res = await _api.get(_links.previous!);
    return ItakuPaginator<T>.fromJson(res, _fromJson, _api);
  }

  factory ItakuPaginator.fromJson(Map<String, dynamic> json,
      Function(Map<String, dynamic>) fromJson, ItakuApi api) {
    return ItakuPaginator._(_PaginatorLinks.fromJson(json["links"]),
        List<T>.from(json["results"].map((j) => fromJson(j))), fromJson, api);
  }
}

class _PaginatorLinks {
  final String? next;
  final String? previous;
  final int? count; // Only for Paginator<ItakuTagFull>

  _PaginatorLinks({this.next, this.previous, this.count});

  factory _PaginatorLinks.fromJson(Map<String, dynamic> json) {
    return _PaginatorLinks(
      next: json["next"],
      previous: json["previous"],
      count: json["count"],
    );
  }
}
