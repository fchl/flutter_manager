import 'dart:convert';

import 'package:flutter_manager/generated/json/base/json_field.dart';
import 'package:flutter_manager/generated/json/qi_niu_token_entity.g.dart';

@JsonSerializable()
class QiNiuTokenEntity {
	String? token;

	QiNiuTokenEntity();

	factory QiNiuTokenEntity.fromJson(Map<String, dynamic> json) => $QiNiuTokenEntityFromJson(json);

	Map<String, dynamic> toJson() => $QiNiuTokenEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}