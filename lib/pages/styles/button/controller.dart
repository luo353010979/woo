import 'package:get/get.dart';

class ButtonDartController extends GetxController {
  ButtonDartController();

  _initData() {
    update(["button_dart"]);
  }

  void onTap() {}

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  @override
  void onReady() {
    super.onReady();
    _initData();
  }

  // @override
  // void onClose() {
  //   super.onClose();
  // }
}
