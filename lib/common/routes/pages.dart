import 'package:chats/common/routes/names.dart';
import 'package:get/get.dart';

import '../../pages/welcome/index.dart';
import '../../pages/sign_in/index.dart';

class AppPages {
  static const INITIAL = AppRoutes.INITIAL;
  static const Application = AppRoutes.Application;
  static List<String> history = [];

  static final List<GetPage> routes = [
    GetPage(
      name: AppPages.INITIAL,
      page: () => const WelcomePage(),
      binding: WelcomeBindings(),
    ),
    GetPage(
      name: AppRoutes.SIGN_IN, 
      page: ()=> const SignInPage(),
      binding: SignInBinding()
    )
  ];
}