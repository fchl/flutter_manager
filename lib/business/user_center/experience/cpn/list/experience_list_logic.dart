import 'package:flutter_manager/common/view_state/simple_view_state_paging_logic.dart';
import 'package:flutter_manager/http/retrofit_client.dart';
import 'package:flutter_manager/models/base_result.dart';
import 'package:flutter_manager/models/experience_item_entity.dart';

class ExperienceListLogic
    extends SimpleViewStatePagingLogic {
  @override
  Future<BaseResult<List<ExperienceItemEntity>>> requestFuture(String pageNum) {
    return RetrofitClient.instance.apiService.getExperienceList(pageNum);
  }
}
