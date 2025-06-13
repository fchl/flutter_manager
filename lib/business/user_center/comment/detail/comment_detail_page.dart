import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_manager/business/common/cpn/cpn_joke_item.dart';
import 'package:flutter_manager/business/common/cpn/cpn_user_comment_item.dart';
import 'package:flutter_manager/common/cpn/app_bar.dart';
import 'package:flutter_manager/common/cpn/cpn_view_state.dart';
import 'package:flutter_manager/router/routers.dart';
import 'package:flutter_manager/theme/color_palettes.dart';

import 'comment_detail_logic.dart';

class CommentDetailPage extends CpnViewState<CommentDetailLogic> {
  const CommentDetailPage({Key? key, super.tag}) : super(key: key);

  @override
  AppBar? buildAppBar() {
    return commonAppBar(bottom: commonTitleBar(title: "评论详情"));
  }

  @override
  Widget buildBody(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                CpnJoke(
                  item: logic.jokeDetailEntity.value!,
                  multiplexVideoPlayer: false,
                  videoPlayHelper: logic,
                  index: 0,
                ),
                CpnUserCommentItem(commentEntity: logic.commentEntity)
              ],
            ),
          ),
        ),
        GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            Map<String, dynamic> arguments = {
              "jokeDetailEntity": logic.jokeDetailEntity.value,
              "videoPlayHelper": logic,
              "index": 0
            };
            AppRoutes.jumpPage(AppRoutes.jokeDetailPage, arguments: arguments);
          },
          child: Container(
              margin: EdgeInsets.symmetric(horizontal: 100.w, vertical: 64.w),
              width: double.infinity,
              height: 80.w,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.fromBorderSide(BorderSide(
                    color: ColorPalettes.instance.primary, width: 2.w)),
                borderRadius: BorderRadius.circular((40.w)),
              ),
              child: Text("查看原帖",
                  style: TextStyle(
                      color: ColorPalettes.instance.primary,
                      fontSize: 32.sp,
                      fontWeight: FontWeight.w500))),
        )
      ],
    );
  }
}
