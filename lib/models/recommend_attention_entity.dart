import 'dart:convert';

import 'package:flutter_manager/generated/json/base/json_field.dart';
import 'package:flutter_manager/generated/json/recommend_attention_entity.g.dart';

@JsonSerializable()
class RecommendAttentionEntity {
	String? avatar;
	String? fansNum;
	bool? isAttention;
	String? jokesNum;
	String? nickname;
	int? userId;

	RecommendAttentionEntity();

	factory RecommendAttentionEntity.fromJson(Map<String, dynamic> json) => $RecommendAttentionEntityFromJson(json);

	Map<String, dynamic> toJson() => $RecommendAttentionEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}