import 'package:flutter/gestures.dart';
import 'package:flutter_manager/common/view_state/simple_view_state_paging_logic.dart';
import 'package:flutter_manager/http/retrofit_client.dart';
import 'package:flutter_manager/models/base_result.dart';
import 'package:flutter_manager/models/comment_entity.dart';

class UserCommentLogic extends SimpleViewStatePagingLogic {

  @override
  Future<BaseResult<List<CommentEntity>>> requestFuture(String pageNum) {
    return RetrofitClient.instance.apiService.getCommentList(pageNum);
  }

}
