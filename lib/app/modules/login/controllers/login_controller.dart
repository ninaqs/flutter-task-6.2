import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final storage = GetStorage();
  late bool isloggedin;

  @override
  void onInit() {
    super.onInit();
    isloggedin = storage.read('isLoggedIn') ?? false;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
