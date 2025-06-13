import 'dart:convert';

import 'package:flutter_manager/generated/json/base/json_field.dart';
import 'package:flutter_manager/generated/json/user_center_entity.g.dart';

@JsonSerializable()
class UserCenterEntity {
	String? attentionNum;
	int? attentionState;
	String? avatar;
	String? collectNum;
	String? commentNum;
	String? cover;
	String? fansNum;
	String? joinTime;
	String? jokeLikeNum;
	String? jokesNum;
	String? likeNum;
	String? nickname;
	String? sigbature;
	int? userId;

	UserCenterEntity();

	factory UserCenterEntity.fromJson(Map<String, dynamic> json) => $UserCenterEntityFromJson(json);

	Map<String, dynamic> toJson() => $UserCenterEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}