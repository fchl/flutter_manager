import 'package:flutter_manager/business/common/logic/joke_list_logic.dart';
import 'package:flutter_manager/http/retrofit_client.dart';
import 'package:flutter_manager/models/base_result.dart';
import 'package:flutter_manager/models/joke_detail_entity.dart';

class FunPicLogic extends JokeListLogic {
  @override
  void onReady() {
    super.onReady();
    loadData();
  }

  @override
  Future<BaseResult<List<JokeDetailEntity>>> requestFuture(String pageNum) {
    return RetrofitClient.instance.apiService.getPicList(pageNum);
  }
}
