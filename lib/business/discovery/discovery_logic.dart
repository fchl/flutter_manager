import 'package:flutter/material.dart';
import 'package:flutter_manager/business/common/logic/joke_list_logic.dart';
import 'package:flutter_manager/business/common/logic/joke_list_video_play_helper_mixin.dart';
import 'package:flutter_manager/http/retrofit_client.dart';
import 'package:flutter_manager/models/base_result.dart';
import 'package:flutter_manager/models/joke_detail_entity.dart';
import 'package:flutter_manager/router/routers.dart';

class DiscoveryLogic extends JokeListLogic with JokeListVideoPlayHelperMixin {
  PageController pageController = PageController();

  @override
  void onInit() {
    super.onInit();
    monitorVideoActive();
  }

  void fetchMoreDataIfNeeded(int curIndex) {
    if (curIndex == dataList.length - 3) {
      loadMorePaging();
    }
  }

  @override
  Future<BaseResult<List<JokeDetailEntity>>> requestFuture(String pageNum) {
    return RetrofitClient.instance.apiService.discoveryList();
  }

  @override
  bool judgeVideoActive() {
    return AppRoutes.curPage.value == AppRoutes.indexPage &&
        indexPageIndex == 1;
  }
}
