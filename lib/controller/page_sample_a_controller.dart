import 'package:get/get.dart';

// 状态管理，可以结合Provider等一起使用
//https://github.com/jonataslaw/getx/blob/master/documentation/zh_CN/state_management.md
class PageSampleAController extends GetxController{ // some line Android&ViewModel
  // .obs 将改变量置为刷新监听变量 响应式改变
  var count = 0.obs;

  increment() => count++;

  // 可以在这里注入获取其他控制器，得以使用多个控制器
  // static PageSampleAController get to => Get.find();

  inReduce(){
    count--;
    update(); // 手动刷新
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }
}