import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:on_board/app/Modules/onBoardingController.dart';
import 'package:on_board/app/core/themes/text_theme.dart';
import 'package:on_board/app/core/values/colors.dart';
import 'package:on_board/app/core/values/strings.dart';
import 'package:on_board/app/data/onBoardingDataList.dart';

class OnBoarding extends StatelessWidget {
  final OnBoardingController c = Get.put(OnBoardingController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          buildPageView(),
          Obx(() => Positioned(
                left: 30,
                top: 25,
                child: c.selectedIndex.value > 0
                    ? Icon(Icons.navigate_before)
                    : Text(''),
              )),
          Obx(() => Positioned(
                right: 30,
                top: 25,
                child: c.selectedIndex.value == onBoardingDataList.length - 1
                    ? Text('')
                    : Text(kSkip),
              )),
          Obx(() => Positioned(
              right: 30,
              bottom: 50,
              child: FloatingActionButton(
                onPressed: () {},
                backgroundColor: kButtonColor,
                child: c.selectedIndex.value == onBoardingDataList.length - 1
                    ? Text(
                        kStart,
                      )
                    : GestureDetector(
                        onTap: () {
                          c.onNextClicked();
                        },
                        child: Text(kNext)),
              ))),
          Positioned(
            left: 30,
            bottom: 50,
            child: Row(
              children: List.generate(
                  onBoardingDataList.length,
                  (index) => Obx(() => Container(
                        margin: EdgeInsets.only(left: 5),
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                            color: c.selectedIndex.value == index
                                ? kButtonColor
                                : Colors.grey,
                            shape: BoxShape.circle),
                      ))),
            ),
          )
        ],
      ),
    ));
  }

  PageView buildPageView() {
    return PageView.builder(
      onPageChanged: c.selectedIndex,
      itemCount: onBoardingDataList.length,
      controller: PageController(
          initialPage: c.selectedIndex.value,
          keepPage: true,
          viewportFraction: 1),
      itemBuilder: (BuildContext context, int itemIndex) {
        return Column(
          children: [
            Image.asset(
              onBoardingDataList[itemIndex].image,
              fit: BoxFit.contain,
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: Text(
                onBoardingDataList[itemIndex].title,
                textAlign: TextAlign.center,
                style: kTextTitle,
              ),
            ),
            SizedBox(
              height: 28,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                onBoardingDataList[itemIndex].description,
                textAlign: TextAlign.center,
                style: kTextDescription,
              ),
            ),
          ],
        );
      },
    );
  }
}
