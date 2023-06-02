import 'package:get/get.dart';

import 'index.dart';

class WelcomeController extends GetxController{
  final state = WelcomeState();
  WelcomeController();

  changePage(int index) async{
    state.index.value = index;
  }
}