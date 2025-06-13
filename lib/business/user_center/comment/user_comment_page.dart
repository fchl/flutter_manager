import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_manager/business/common/cpn/cpn_user_comment_item.dart';
import 'package:flutter_manager/common/cpn/cpn_view_state_sliver_body.dart';
import 'package:flutter_manager/theme/color_palettes.dart';

import 'user_comment_logic.dart';

/// 用户中心-评论
class UserCommentPage extends CpnViewStateSliverBody<UserCommentLogic> {
  UserCommentPage({super.key, super.tag}) : super(bindViewState: false);

  @override
  Widget buildSliverList() {
    var items = logic.dataList;
    return ListView.separated(
      separatorBuilder: (c, i) => Container(
          margin: EdgeInsets.symmetric(horizontal: 48.w),
          height: 2.w,
          color: ColorPalettes.instance.divider),
      physics: const ClampingScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (c, i) => CpnUserCommentItem(commentEntity: items[i]),
    );
  }
}
