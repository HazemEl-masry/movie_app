import 'package:flutter/material.dart';
import 'package:movie_app/constant/constant.dart';
import 'dart:ui';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Constant.kBlackColor,
      body: SizedBox(
        width: screenWidth,
        height: screenHight,
        child: Stack(
          children: [
            Positioned(
              top: screenHight*0.1,
                left: -88.0,
                child: Container(
                  width: 166.0,
                  height: 166.0,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Constant.kPinkColor
                  ),
                  child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 200.0,
                        sigmaY: 200.0
                      ),
                    child: const SizedBox(
                      width: 166.0,
                      height: 166.0,
                    ),
                  ),
            )
            ),
            Positioned(
                top: screenHight*0.3,
                right: -100.0,
                child: Container(
                  width: 200.0,
                  height: 200.0,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Constant.kGreenColor
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                        sigmaX: 200.0,
                        sigmaY: 200.0
                    ),
                    child: const SizedBox(
                      width: 200.0,
                      height: 200.0,
                    ),
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}
