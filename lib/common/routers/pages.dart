
import 'package:get/get.dart';
import 'names.dart';
import 'package:woo/pages/index.dart';


class RoutePages {
  // 列表
  static List<GetPage> list = [
     GetPage(
        name: RouteNames.systemLogin,
        page: () => const LoginPage(),
        binding: LoginBinding()
      ),
  ];
}
