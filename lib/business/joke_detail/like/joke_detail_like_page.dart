import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_manager/business/joke_detail/like/joke_detail_like_logic.dart';
import 'package:flutter_manager/common/cpn/cpn_image.dart';
import 'package:flutter_manager/common/cpn/cpn_view_state_sliver_body.dart';
import 'package:flutter_manager/common/util/media_util.dart';
import 'package:flutter_manager/models/joke_like_user_entity.dart';
import 'package:flutter_manager/router/routers.dart';
import 'package:flutter_manager/theme/color_palettes.dart';

/// 段子详情页-喜欢
class JokeDetailLikePage extends CpnViewStateSliverBody<JokeDetailLikeLogic> {
  final int jokeId;

  JokeDetailLikePage({Key? key, super.tag, required this.jokeId})
      : super(key: key);

  @override
  void preInit() {
    super.preInit();
    logic.jokesId = jokeId;
  }

  @override
  Widget buildSliverList() {
    var items = logic.dataList;
    return ListView.separated(
      separatorBuilder: (c, i) => Container(
          margin: EdgeInsets.symmetric(horizontal: 48.w),
          height: 1.w,
          color: ColorPalettes.instance.divider),
      itemCount: items.length,
      itemBuilder: (c, i) => _likeItem(items[i]),
    );
  }

  Widget _likeItem(JokeLikeUserEntity item) {
    return InkWell(
      onTap: () {
        AppRoutes.jumpPage(AppRoutes.userCenterPage, arguments: {
          "index": "0",
          "userId": (item.userId ?? 0).toString()
        });
      },
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 32.w),
          height: 140.w,
          alignment: Alignment.center,
          child: Row(
            children: [
              cpnCircleImage(
                  url: decodeMediaUrl(item.avatar),
                  width: 80.w,
                  height: 80.w,
                  defaultPlaceHolderAssetName: "ic_default_avatar",
                  defaultErrorAssetName: "ic_default_avatar"),
              SizedBox(
                width: 14.w,
              ),
              Text(
                item.nickname ?? "--",
                style: TextStyle(
                    fontSize: 32.sp, color: ColorPalettes.instance.secondText),
              )
            ],
          )),
    );
  }
}
