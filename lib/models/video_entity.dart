import 'dart:convert';

import 'package:flutter_manager/generated/json/base/json_field.dart';
import 'package:flutter_manager/generated/json/video_entity.g.dart';

@JsonSerializable()
class VideoEntity {
	String? cover;
	int? jokeId;
	String? likeNum;

	VideoEntity();

	factory VideoEntity.fromJson(Map<String, dynamic> json) => $VideoEntityFromJson(json);

	Map<String, dynamic> toJson() => $VideoEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}