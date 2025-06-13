import 'package:get/get.dart';
import 'package:flutter_manager/business/common/logic/joke_comment_list_logic.dart';
import 'package:flutter_manager/business/joke_detail/like/joke_detail_like_logic.dart';

import 'joke_detail_logic.dart';

class JokeDetailBinding extends Bindings {
  final String? tag;

  JokeDetailBinding({this.tag});

  @override
  void dependencies() {
    Get.lazyPut(() => JokeCommentListLogic(), tag: tag);
    Get.lazyPut(() => JokeDetailLikeLogic(), tag: tag);
    Get.lazyPut(() => JokeDetailLogic(tag: tag), tag: tag);
  }
}
