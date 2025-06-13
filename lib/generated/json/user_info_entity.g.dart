import 'package:flutter_manager/generated/json/base/json_convert_content.dart';
import 'package:flutter_manager/models/login_entity.dart';
import 'package:flutter_manager/models/user_info_entity.dart';


UserInfoEntity $UserInfoEntityFromJson(Map<String, dynamic> json) {
	final UserInfoEntity userInfoEntity = UserInfoEntity();
	final UserInfo? info = jsonConvert.convert<UserInfo>(json['info']);
	if (info != null) {
		userInfoEntity.info = info;
	}
	final User? user = jsonConvert.convert<User>(json['user']);
	if (user != null) {
		userInfoEntity.user = user;
	}
	return userInfoEntity;
}

Map<String, dynamic> $UserInfoEntityToJson(UserInfoEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['info'] = entity.info?.toJson();
	data['user'] = entity.user?.toJson();
	return data;
}

UserInfo $UserInfoFromJson(Map<String, dynamic> json) {
	final UserInfo userInfo = UserInfo();
	final int? attentionNum = jsonConvert.convert<int>(json['attentionNum']);
	if (attentionNum != null) {
		userInfo.attentionNum = attentionNum;
	}
	final int? experienceNum = jsonConvert.convert<int>(json['experienceNum']);
	if (experienceNum != null) {
		userInfo.experienceNum = experienceNum;
	}
	final int? fansNum = jsonConvert.convert<int>(json['fansNum']);
	if (fansNum != null) {
		userInfo.fansNum = fansNum;
	}
	final int? likeNum = jsonConvert.convert<int>(json['likeNum']);
	if (likeNum != null) {
		userInfo.likeNum = likeNum;
	}
	return userInfo;
}

Map<String, dynamic> $UserInfoToJson(UserInfo entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['attentionNum'] = entity.attentionNum;
	data['experienceNum'] = entity.experienceNum;
	data['fansNum'] = entity.fansNum;
	data['likeNum'] = entity.likeNum;
	return data;
}