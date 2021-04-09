import 'package:get/get.dart';
import 'package:on_board/app/Modules/onBoardingController.dart';

class OnBoardingBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<OnBoardingController>(() => OnBoardingController());
  }
  
} 