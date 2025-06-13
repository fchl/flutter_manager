import 'package:get/get.dart';
import 'package:flutter_manager/business/search/history/search_history_logic.dart';
import 'package:flutter_manager/business/search/hot/search_hot_key_logic.dart';
import 'package:flutter_manager/business/search/result/search_result_logic.dart';

import 'search_logic.dart';

class SearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchLogic());
    Get.lazyPut(() => SearchHotKeyLogic());
    Get.lazyPut(() => SearchHistoryLogic());
    Get.lazyPut(() => SearchResultLogic());
  }
}
