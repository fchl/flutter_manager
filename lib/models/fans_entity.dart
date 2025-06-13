import 'dart:convert';

import 'package:flutter_manager/generated/json/base/json_field.dart';
import 'package:flutter_manager/generated/json/fans_entity.g.dart';

@JsonSerializable()
class FansEntity {
	int? attention;
	String? avatar;
	String? nickname;
	String? signature;
	int? userId;

	FansEntity();

	factory FansEntity.fromJson(Map<String, dynamic> json) => $FansEntityFromJson(json);

	Map<String, dynamic> toJson() => $FansEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}