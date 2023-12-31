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
  String toString() => key;
}

enum ItakuContentType {
  @JsonValue("galleryimage")
  galleryImage("galleryimage", "Gallery Image"),

  @JsonValue("post")
  post("post", "Post"),

  @JsonValue("reshare")
  reshare("reshare", "Reshare"),

  @JsonValue("commission")
  commission("commission", "Commission"),

  @JsonValue("undefined")
  other("undefined", "Undefined");

  final String key;
  final String name;
  const ItakuContentType(this.key, this.name);

  @override
  String toString() => name;
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
  public("PUBLIC", "Public"),

  @JsonValue("PROFILE_ONLY")
  profileOnly("PROFILE_ONLY", "Profile Only");

  final String key;
  final String name;
  const ItakuVisibility(this.key, this.name);

  @override
  String toString() => name;
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

enum ItakuCommissionStatus {
  @JsonValue("ACTIVE")
  request("ACTIVE", "Active"),

  @JsonValue("DOING")
  offer("DOING", "Doing"),

  @JsonValue("INACTIVE")
  inactive("INACTIVE", "Inactive");

  final String key;
  final String name;
  const ItakuCommissionStatus(this.key, this.name);

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
