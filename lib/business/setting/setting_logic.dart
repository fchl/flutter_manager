import 'package:get/get.dart';
import 'package:flutter_manager/theme/color_palettes.dart';

class SettingLogic extends GetxController {
  RxBool switchVideoAutoPlay = false.obs;
  RxBool switchMobileNetworkVideoPlay = false.obs;

  RxList<PalettesStyle> palettesStyles =
      (ColorPalettes.instance.palettes.keys.toList()).obs;

  RxInt curPalettesIndex = ColorPalettes.instance.palettesStyle.value.index.obs;

  void changeTheme(PalettesStyle palettesStyle) {
    ColorPalettes.instance.changeTheme(palettesStyle);
    curPalettesIndex.value = palettesStyle.index;
  }
}
