import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:woo/common/index.dart';

import 'index.dart';

class StyleIndexPage extends GetView<StyleIndexController> {
  const StyleIndexPage({super.key});

  // 主视图
  Widget _buildView() {
    return Column(
      children: [
        // 文本
        ListTile(
          onTap: () => Get.toNamed(RouteNames.stylesText),
          title: const Text("Text 文本"),
        ),

        // 图片
        ListTile(
          onTap: () => Get.toNamed(RouteNames.stylesImage),
          title: const Text("Image 图片"),
        ),

        ListTile(
          onTap: controller.onLanguageSelected,
          title: Text("语言 : ${ConfigService.to.locale.toLanguageTag()}"),
        ),

        // 主题
        ListTile(
          onTap: () => controller.onThemeSelected("light"),
          title: Text("亮色 : ${ConfigService.to.themeMode}"),
        ),
        ListTile(
          onTap: () => controller.onThemeSelected("dark"),
          title: Text("暗色 : ${ConfigService.to.themeMode}"),
        ),
        ListTile(
          onTap: () => controller.onThemeSelected("system"),
          title: Text("系统 : ${ConfigService.to.themeMode}"),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<StyleIndexController>(
      init: StyleIndexController(),
      id: "styles_index",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: Text(LocaleKeys.stylesTitle.tr)),
          body: SafeArea(child: _buildView()),
        );
      },
    );
  }
}
