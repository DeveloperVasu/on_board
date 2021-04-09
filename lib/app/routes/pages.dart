import 'package:get/get.dart';
import 'package:on_board/app/Modules/onBoarding.dart';
import 'package:on_board/app/Modules/onBoardingBinding.dart';
import 'package:on_board/app/routes/routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: Routes.OnBoarding, page: () => OnBoarding(), binding: OnBoardingBinding())
  ];
}
