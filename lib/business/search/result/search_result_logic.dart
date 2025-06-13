import 'dart:async';

import 'package:get/get.dart';
import 'package:flutter_manager/business/common/logic/joke_list_logic.dart';
import 'package:flutter_manager/business/common/logic/joke_list_video_play_helper_mixin.dart';
import 'package:flutter_manager/business/search/history/search_history_logic.dart';
import 'package:flutter_manager/http/retrofit_client.dart';
import 'package:flutter_manager/models/base_result.dart';
import 'package:flutter_manager/models/joke_detail_entity.dart';
import 'package:flutter_manager/router/routers.dart';

class SearchResultLogic extends JokeListLogic
    with JokeListVideoPlayHelperMixin {
  String _key = "";
  final historyLogic = Get.find<SearchHistoryLogic>();

  @override
  void onInit() {
    super.onInit();
    monitorVideoActive();
  }

  @override
  void onClose() {
    disposePlayer();
    super.onClose();
  }

  void updateKey(String key) {
    _key = key;
    dataList.clear();
    resetPlayList();
    if (_key.isNotEmpty) {
      loadData();
      historyLogic.addKey(key);
    }
  }

  @override
  Future<BaseResult<List<JokeDetailEntity>>> requestFuture(String pageNum) {
    return RetrofitClient.instance.apiService.searchJokes(_key, pageNum);
  }

  @override
  bool judgeVideoActive() {
    return AppRoutes.curPage.value == AppRoutes.searchPage;
  }
}
