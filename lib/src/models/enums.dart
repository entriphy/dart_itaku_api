import 'package:json_annotation/json_annotation.dart';

enum ItakuMaturityRating {
  @JsonValue("SFW")
  sfw("SFW"),

  @JsonValue("Questionable")
  questionable("Questionable"),

  @JsonValue("NSFW")
  nsfw("NSFW"),

  @JsonValue("ANY")
  any("ANY"); // Only used for commissions?

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
  dateAdded("date_added", "New"),
  numLikes("num_likes", "Likes"),
  numFollowers("num_followers", "Followers"),
  numObjects("num_objects", "Objects"),
  tagType("tag_type", "Tag Type");

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

enum ItakuCommissionType {
  @JsonValue("REQUEST")
  request("REQUEST", "Request"),

  @JsonValue("OFFER")
  offer("OFFER", "Offer"),

  @JsonValue("ADOPT")
  adopt("ADOPT", "Adopt"),

  @JsonValue("YCH")
  ych("YCH", "YCH");

  final String key;
  final String name;
  const ItakuCommissionType(this.key, this.name);

  @override
  String toString() => name;
}

enum ItakuTagType {
  @JsonValue("GENERAL")
  general("GENERAL", "General"),

  @JsonValue("ARTIST")
  artist("ARTIST", "Artist"),

  @JsonValue("CHARACTER")
  character("CHARACTER", "Character"),

  @JsonValue("SPECIES")
  species("SPECIES", "Species"),

  @JsonValue("COPYRIGHT")
  copyright("COPYRIGHT", "Copyright"),

  @JsonValue("META")
  meta("META", "Meta");

  final String key;
  final String name;
  const ItakuTagType(this.key, this.name);

  @override
  String toString() => name;
}
