import 'package:get/get.dart';
import 'package:flutter_manager/common/view_state/view_state_logic.dart';
import 'package:flutter_manager/http/retrofit_client.dart';
import 'package:flutter_manager/models/experience_overview_entity.dart';

class ExperienceOverviewLogic extends ViewStateLogic {

  final overviewEntity = Rxn<ExperienceOverviewEntity>();

  @override
  void loadData() {
    super.loadData();
    sendRequest(RetrofitClient.instance.apiService.getExperienceOverview(),
    successCallback: (value) {
      overviewEntity.value = value;
    });
  }

}
