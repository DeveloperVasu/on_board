import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:on_board/app/data/onBoardingDataList.dart';

class OnBoarding extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          itemCount: onBoardingDataList.length,
          controller: PageController(initialPage: 0, keepPage: true, viewportFraction: 1),
          itemBuilder: (BuildContext context, int itemIndex) {
            return Column(
          children: [
            Image.asset(onBoardingDataList[itemIndex].image),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: Text(
                onBoardingDataList[itemIndex].title,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Fonarto',
                    fontSize: 36,
                    color: Color(0xFF3F6146)),
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
                style:
                GoogleFonts.openSans(fontSize: 18, color: Color(0xFF000000)),
              ),
            ),
          ],
        );
          },
        )
      ),
    );
  }
}
