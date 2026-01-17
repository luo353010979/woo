import 'package:get/get.dart';
import 'package:woo/common/index.dart';

class SplashController extends GetxController {
  SplashController();

  _initData() {
    update(["splash"]);
  }

  void onTap() {}

  _jumpToPage() {
    // 欢迎页
    Future.delayed(const Duration(seconds: 1), () {
      Get.offAllNamed(RouteNames.systemWelcome);
    });
  }

  @override
  void onReady() {
    super.onReady();
    // _initData();
    _jumpToPage();
  }
}
