import 'package:get/get.dart';
import 'package:woo/common/index.dart';

class StyleIndexController extends GetxController {
  StyleIndexController();

  _initData() {
    update(["style_index"]);
  }

  void onTap() {}


   onLanguageSelected() {
    var en = Translation.supportedLocales[0];
    var zh = Translation.supportedLocales[1];

    ConfigService.to.setLanguage(
      ConfigService.to.locale.toLanguageTag() == en.toLanguageTag() ? zh : en,
    );
    update(["styles_index"]);
  }

  // 主题
  onThemeSelected(String themeKey) async {
    await ConfigService.to.setThemeMode(themeKey);
    update(["styles_index"]);
  }

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
