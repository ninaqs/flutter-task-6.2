import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var selectedIndex = 0.obs; // Current selected index

  // List of pages to display for each tab
  final List<Widget> pages = [
    const Center(child: Text('Welcome to Home')),
    const Center(child: Text('Favourites')),
    const Center(child: Text('User Profile')),
    const Center(child: Text('App Settings')),
  ];

  void onItemTapped(int index) {
    selectedIndex.value = index;
    //print(selectedIndex);
  }

  @override
  void onInit() {
    super.onInit();
    selectedIndex = 0.obs;
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
