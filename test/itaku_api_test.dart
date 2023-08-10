import 'package:itaku_api/itaku_api.dart';
import 'package:test/test.dart';

void main() {
  ItakuApi api = ItakuApi();

  test("Trending feed for today is fetchable", () async {
    List<ItakuFeedItem> results = [];
    ItakuPaginator<ItakuFeedItem>? page;
    do {
      page = page == null ? await api.getFeed() : await page.nextPage();
      results.addAll(page.results);
    } while (page.hasNext);

    expect(results.length, isNonZero);
  });
}
