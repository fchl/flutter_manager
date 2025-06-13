import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_manager/business/common/cpn/cpn_joke_item.dart';
import 'package:flutter_manager/business/search/result/search_result_logic.dart';
import 'package:flutter_manager/common/cpn/cpn_view_state_paging.dart';

/// 搜索结果组件
class CpnSearchResult extends CpnViewStatePaging<SearchResultLogic> {
  CpnSearchResult({Key? key}) : super(key: key);

  @override
  bool autoLoadData() => true;

  @override
  Widget buildPagingList() {
    var items = logic.dataList;
    return ListView.builder(
      physics: const ClampingScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (c, i) => CpnJokeItem(
          item: items[i], index: i, logic: logic, videoPlayHelper: logic),
    );
  }

  @override
  void scrollNotificationCallback(ScrollNotification scrollNotification) {
    logic.scrollNotificationCallback(scrollNotification);
  }
}
