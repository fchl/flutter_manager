import 'package:flutter_manager/generated/json/base/json_convert_content.dart';
import 'package:flutter_manager/models/experience_item_entity.dart';

ExperienceItemEntity $ExperienceItemEntityFromJson(Map<String, dynamic> json) {
	final ExperienceItemEntity experienceItemEntity = ExperienceItemEntity();
	final String? desc = jsonConvert.convert<String>(json['desc']);
	if (desc != null) {
		experienceItemEntity.desc = desc;
	}
	final String? num = jsonConvert.convert<String>(json['num']);
	if (num != null) {
		experienceItemEntity.num = num;
	}
	final String? time = jsonConvert.convert<String>(json['time']);
	if (time != null) {
		experienceItemEntity.time = time;
	}
	return experienceItemEntity;
}

Map<String, dynamic> $ExperienceItemEntityToJson(ExperienceItemEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['desc'] = entity.desc;
	data['num'] = entity.num;
	data['time'] = entity.time;
	return data;
}