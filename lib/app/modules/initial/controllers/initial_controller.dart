import 'package:get/get.dart';
import 'package:shoppy/app/modules/home/views/home_view.dart';
import 'package:shoppy/app/modules/login/controllers/login_controller.dart';
import 'package:shoppy/app/modules/login/views/login_view.dart';
import 'package:shoppy/app/modules/onboard/controllers/onboard_controller.dart';
import 'package:shoppy/app/modules/onboard/views/onboard_view.dart';

import '../../home/controllers/home_controller.dart';

class InitialController extends GetxController {
  

  var isBoarded = Get.find<OnboardController>().isonboarded;
  var isLoggedin = Get.find<LoginController>().isloggedin;

  inital() {
    print('is Logged in:$isLoggedin');
    print('is onboarded: $isBoarded');

    if (isBoarded == true && isLoggedin == false) {
      return LoginView();
    }

    if (isLoggedin) {
      return HomeView();
    }

    return OnboardView();
  }

  @override
  void onInit() {
    super.onInit();
    Get.put(OnboardController());
    Get.put(LoginController());
    Get.put(HomeController());
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
