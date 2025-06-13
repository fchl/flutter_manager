import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_manager/common/cpn/cpn_view_state_sliver_body.dart';
import 'package:flutter_manager/models/experience_item_entity.dart';
import 'package:flutter_manager/theme/color_palettes.dart';

import 'experience_list_logic.dart';

/// 我的乐豆详细列表组件
class CpnExperienceList extends CpnViewStateSliverBody<ExperienceListLogic> {
  CpnExperienceList({Key? key}) : super(key: key);

  @override
  Widget buildSliverList() {
    var items = logic.dataList;
    return ListView.separated(
      physics: const ClampingScrollPhysics(),
      separatorBuilder: (c, i) => Container(margin: EdgeInsets.symmetric(horizontal: 48.w), height: 2.w, color: ColorPalettes.instance.divider),
      itemCount: items.length,
      itemBuilder: (c, i) =>
          _experienceItem(items[i]),
    );
  }

  Widget _experienceItem(ExperienceItemEntity item) {
    return Container(
      height: 140.w,
      padding: EdgeInsets.symmetric(horizontal: 48.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(item.time ?? "--",
                style: TextStyle(
                    fontSize: 32.sp, color: ColorPalettes.instance.firstText)),
          ),
          Expanded(
            child: Text(item.num ?? "--",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 32.sp, color: ColorPalettes.instance.firstText)),
          ),
          Expanded(
            child: Text(item.desc ?? "--",
                textAlign: TextAlign.end,
                style: TextStyle(
                    fontSize: 28.sp, color: ColorPalettes.instance.firstText)),
          )
        ],
      ),
    );
  }
}
