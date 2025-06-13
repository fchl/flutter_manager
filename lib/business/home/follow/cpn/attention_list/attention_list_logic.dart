import 'package:flutter_manager/business/common/logic/joke_list_logic.dart';
import 'package:flutter_manager/business/common/logic/joke_list_video_play_helper_mixin.dart';
import 'package:flutter_manager/http/retrofit_client.dart';
import 'package:flutter_manager/models/base_result.dart';
import 'package:flutter_manager/models/joke_detail_entity.dart';
import 'package:flutter_manager/router/routers.dart';

class AttentionListLogic extends JokeListLogic
    with JokeListVideoPlayHelperMixin {
  @override
  void onInit() {
    super.onInit();
    monitorVideoActive();
  }

  @override
  void onReady() {
    super.onReady();
    loadData();
  }

  @override
  Future<BaseResult<List<JokeDetailEntity>>> requestFuture(String pageNum) {
    return RetrofitClient.instance.apiService.getAttentionList(pageNum);
  }

  @override
  bool judgeVideoActive() {
    return AppRoutes.curPage.value == AppRoutes.indexPage &&
        indexPageIndex == 0 &&
        homePageIndex == 0;
  }
}
