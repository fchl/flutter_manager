import 'package:flutter_manager/common/view_state/simple_view_state_paging_logic.dart';
import 'package:flutter_manager/http/retrofit_client.dart';
import 'package:flutter_manager/models/base_result.dart';
import 'package:flutter_manager/models/video_entity.dart';

class UserCreationVideoLogic extends SimpleViewStatePagingLogic {
  String targetUserId = "";

  @override
  Future<BaseResult<List<VideoEntity>>> requestFuture(String pageNum) {
    return RetrofitClient.instance.apiService
        .getUserVideoList(targetUserId, pageNum);
  }
}
