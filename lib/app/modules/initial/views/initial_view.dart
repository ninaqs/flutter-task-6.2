import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppy/app/modules/login/views/login_view.dart';
import '../controllers/initial_controller.dart';

class InitialView extends GetView<InitialController> {
  const InitialView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return controller.inital();
  }
}
