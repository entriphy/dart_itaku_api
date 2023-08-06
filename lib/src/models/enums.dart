import 'package:json_annotation/json_annotation.dart';

enum ItakuMaturityRating {
  @JsonValue("SFW")
  sfw("SFW"),

  @JsonValue("Questionable")
  questionable("Questionable"),

  @JsonValue("NSFW")
  nsfw("NSFW");

  final String key;
  const ItakuMaturityRating(this.key);

  @override
  String toString() => name;
}

enum ItakuContentType {
  @JsonValue("galleryimage")
  galleryImage("galleryimage"),

  @JsonValue("post")
  post("post"),

  @JsonValue("reshare")
  reshare("reshare"),

  @JsonValue("commission")
  commission("commission"),

  @JsonValue("undefined")
  other("undefined");

  final String key;
  const ItakuContentType(this.key);
}

enum ItakuVerb {
  @JsonValue("added")
  added("added"),

  @JsonValue("reshared")
  reshared("reshared");

  final String key;
  const ItakuVerb(this.key);
}

enum ItakuVisibility {
  @JsonValue("PUBLIC")
  public("PUBLIC"),

  @JsonValue("PROFILE_ONLY")
  profileOnly("PROFILE_ONLY");

  final String key;
  const ItakuVisibility(this.key);
}

enum ItakuOrdering {
  hotnessScore("hotness_score", "Trending"),
  dateAdded("date_added", "New");

  final String key;
  final String name;
  const ItakuOrdering(this.key, this.name);

  @override
  String toString() => name;
}

enum ItakuDateRange {
  today("today", "Today"),
  yesterday("yesterday", "Yesterday"),
  days3("3_days", "Past 3 days"),
  week("week", "Past week"),
  month("30_days", "Month"),
  year("365_days", "Past year"),
  allTime("", "All time");

  final String key;
  final String name;
  const ItakuDateRange(this.key, this.name);

  @override
  String toString() => name;
}
