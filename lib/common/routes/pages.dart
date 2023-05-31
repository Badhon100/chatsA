import 'package:chats/common/routes/names.dart';
import 'package:get/get.dart';

import '../../pages/welcome/bindings.dart';
import '../../pages/welcome/view.dart';

class AppPages {
  static const INITIAL = AppRoutes.INITIAL;
  static const Application = AppRoutes.Application;
  static List<String> history = [];

  static final List<GetPage> routes = [
    GetPage(
      name: AppPages.INITIAL,
      page: () => const WelcomePage(),
      binding: WelcomeBindings(),
    )
  ];
}