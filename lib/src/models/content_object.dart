import 'package:json_annotation/json_annotation.dart';

import 'commission.dart';
import 'image.dart';
import 'post.dart';
import 'reshare.dart';

abstract class ItakuContentObject {
  Map<String, dynamic> toJson();
}

class ItakuContentObjectConverter
    implements JsonConverter<ItakuContentObject, Map<String, dynamic>> {
  const ItakuContentObjectConverter();

  @override
  ItakuContentObject fromJson(Map<String, dynamic> json) {
    // This solution is kinda dumb, but json_serializable doesn't support
    // passing a JSON value from the parent object to the converter class.
    // (usually I would pass ItakuFeedItem.contentType and then just
    // switch/case over that enum)
    // Technically ItakuFeedItem could be generic, where T extends
    // ItakuContentObject, though that would make pagination more complicated.
    // So, let's just do it this way for now...
    if (json.containsKey("gallery_images")) {
      return ItakuPost.fromJson(json);
    } else if (json.containsKey("image_lg")) {
      return ItakuImage.fromJson(json);
    } else if (json.containsKey("comm_type")) {
      return ItakuCommission.fromJson(json);
    } else if (json.containsKey("content_object")) {
      return ItakuReshare.fromJson(json);
    }

    throw Exception("Unsupported content object: $json");
  }

  @override
  Map<String, dynamic> toJson(ItakuContentObject object) {
    return object.toJson();
  }
}
