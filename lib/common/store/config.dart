import 'package:chats/common/services/storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConfigStore extends GetxController{
  static ConfigStore get to => Get.find();

  bool isFirstOpen = false;
  var _platform;
  String get version => _platform?.version ?? '-';
  bool get isRelease => const bool.fromEnvironment("dart.v,.product");
  Locale locale = const Locale('en', 'US');
  List<Locale> languages = [
    Locale('en', 'US'),
    Locale('bn', 'Ban'),
  ];

  @override
  void onInit() {
    super.onInit();
    // isFirstOpen = StorageService.to.getBool(STORAGE_DEVICE_FIRST_OPEN_KEY);
  }

  Future<void> getPlatform() async{
    // _platform = await PackageInfo.fromPlatfrom();
  }

  Future<void> saveAlreadyOpen(){
    // return StorageService.to.setBool(STORAGE_DEVICE_FIRST_OPEN_KEY, true);
    return getPlatform();
  }
}