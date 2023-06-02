import 'package:chats/common/routes/names.dart';
import 'package:chats/common/store/config.dart';
import 'package:get/get.dart';

import 'index.dart';

class WelcomeController extends GetxController{
  final state = WelcomeState();
  WelcomeController();

  changePage(int index) async{
    state.index.value = index;
  }

  handleSignIn()async{
    await ConfigStore.to.saveAlreadyOpen();
    Get.offAllNamed(AppRoutes.SIGN_IN);
  }
}