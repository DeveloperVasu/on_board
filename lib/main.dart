import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:on_board/app/Modules/onBoarding.dart';
import 'package:on_board/app/Modules/onBoardingBinding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/",
      getPages: [
        GetPage(
            name: "/", page: () => OnBoarding(), binding: OnBoardingBinding()),
      ],
    );
  }
}
