import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_manager/common/util/user_manager.dart';
import 'package:flutter_manager/common/view_state/view_state_logic.dart';
import 'package:flutter_manager/http/retrofit_client.dart';

class EditSignatureLogic extends ViewStateLogic {
  TextEditingController textEditingController = TextEditingController();
  RxString inputValue = "".obs;
  RxBool isAllowSave = false.obs;

  void updateInput(String value) {
    inputValue.value = value;
    isAllowSave.value = value.isNotEmpty;
    textEditingController.value = TextEditingValue(
        text: value,
        selection: TextSelection.fromPosition(TextPosition(
            affinity: TextAffinity.downstream, offset: value.length)));
  }

  void updateUserInfo() {
    sendRequest(
      RetrofitClient.instance.apiService.updateUserInfo(inputValue.value, "2"),
      bindViewState: false,
      showLoadingDialog: true,
        emptyAsSuccess: true,
      successCallback: (value) {
        UserManager.instance.updateSignature(inputValue.value);
        Get.back();
      }
    );
  }
}
