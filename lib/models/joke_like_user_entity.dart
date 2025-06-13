import 'package:flutter_manager/generated/json/base/json_field.dart';
import 'package:flutter_manager/generated/json/joke_like_user_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class JokeLikeUserEntity {
	String? avatar;
	String? nickname;
	@JSONField(name: "user_id")
	int? userId;

	JokeLikeUserEntity();

	factory JokeLikeUserEntity.fromJson(Map<String, dynamic> json) => $JokeLikeUserEntityFromJson(json);

	Map<String, dynamic> toJson() => $JokeLikeUserEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}