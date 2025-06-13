import 'package:flutter_manager/generated/json/base/json_convert_content.dart';
import 'package:flutter_manager/models/qi_niu_token_entity.dart';

QiNiuTokenEntity $QiNiuTokenEntityFromJson(Map<String, dynamic> json) {
	final QiNiuTokenEntity qiNiuTokenEntity = QiNiuTokenEntity();
	final String? token = jsonConvert.convert<String>(json['token']);
	if (token != null) {
		qiNiuTokenEntity.token = token;
	}
	return qiNiuTokenEntity;
}

Map<String, dynamic> $QiNiuTokenEntityToJson(QiNiuTokenEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['token'] = entity.token;
	return data;
}