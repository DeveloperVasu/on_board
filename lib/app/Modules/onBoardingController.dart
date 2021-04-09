import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController{
  var selectedIndex = 0.obs;
  var pageController = PageController();

  onNextClicked(){
    pageController.nextPage(duration: 300.milliseconds, curve: Curves.easeIn);
  }

}