import 'package:flutter/material.dart';
import 'package:movie_app/components/custom_outline.dart';
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
            ),
            Column(
              children: [
                SizedBox(
                  height: screenHight*0.07,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: CustomOutline(
                      strokeWidth: 4,
                      radius: screenWidth*0.8,
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Constant.kPinkColor,
                            Constant.kPinkColor.withOpacity(0),
                            Constant.kGreenColor.withOpacity(0.1),
                            Constant.kGreenColor,
                          ],
                        stops: const [0.2,0.4,0.6,1]
                      ),
                      width: 400,
                      height: 350.0,
                      padding: const EdgeInsets.all(4.0),
                      child: Image(image: AssetImage(
                          "assets/img-onboarding.png"),
                        height: 350.0,
                        width: 400.0,
                      )
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
