import 'package:get/get.dart';

import '../../models/notice_module.dart';
import '../../utils/emum.dart';

class HomeLogic extends GetxController{
  NoticeStatus noticeView = NoticeStatus.read;
  bool selected = false;
  List<Notice> notice = [];

  @override
  void onInit() async {
    Notice n1 = Notice(
      id: 1, title: "Title 1",
      description: "Description 1",
      publishDate: "2022-01-01",
      // time: "12:00",
      // image: "assets/images/notice1.jpg"
    );
    Notice n2 = Notice(
      id: 1, title: "Title 2 is ",
      description: "Description 2",
      publishDate: "2022-01-01",
      // time: "12:00",
      // image: "assets/images/notice1.jpg"
    );
    Notice n3 = Notice(
      id: 1, title: "Title 3 is this sacdsadsad asdas dsa d asd as d sad asd as d as",
      description: "Description ho yo",
      publishDate: "2022-01-01",
      // time: "12:00",
      // image: "assets/images/notice1.jpg"
    );
    Notice n4 = Notice(
      id: 1, title: "Title 4 is this",
      description: "Description ho yo 4th ko",
      publishDate: "2022-01-01",
      // time: "12:00",
      // image: "assets/images/notice1.jpg"
    );
    Notice n5 = Notice(
      id: 1, title: "Title 4 is this",
      // description: "Description ho yo 4th ko",
      publishDate: "2022-01-01",
      // time: "12:00",
      // image: "assets/images/notice1.jpg"
    );

    notice.add(n1);
    notice.add(n2);
    notice.add(n3);
    notice.add(n4);
    notice.add(n5);
    super.onInit();
  }


}