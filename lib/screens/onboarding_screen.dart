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
            Center(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: screenHight*0.12,
                  ),
                  CustomOutline(
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
                      width: screenWidth*0.8,
                      height: screenHight*0.4,
                      padding: const EdgeInsets.all(4),
                      child: Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(image: AssetImage("assets/img-onboarding.png"),
                            fit: BoxFit.cover,
                            alignment: Alignment.bottomLeft
                          )
                        ),
                      ),
                  ),
                  SizedBox(
                    height: screenHight*0.09,
                  ),
                  Text(
                      "Watch movies in \n Virtual Reality",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: screenHight<=660? 18:34,
                      fontWeight: FontWeight.w700,
                      color: Constant.kWhiteColor.withOpacity(0.85),
                    ),
                  ),
                  SizedBox(
                    height: screenHight*0.05,
                  ),
                  Text(
                    "Download and watch offline \n wherever you are",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: screenHight<=660? 12:16,
                      fontWeight: FontWeight.w100,
                      color: Constant.kWhiteColor.withOpacity(0.75),
                    ),
                  ),
                  SizedBox(
                    height: screenHight*0.04,
                  ),
                  CustomOutline(
                      strokeWidth: 3,
                      radius: 20,
                      gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Constant.kPinkColor,
                            Constant.kGreenColor,
                          ],
                      ),
                      width: 160.0,
                      height: 38.0,
                      padding: const EdgeInsets.all(3),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Constant.kPinkColor.withOpacity(0.3),
                                Constant.kGreenColor.withOpacity(0.3),
                              ]
                          )
                        ),
                        child: Center(
                          child: Text(
                              "Sign up",
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Constant.kWhiteColor,
                              letterSpacing: 0.37
                            ),
                          ),
                        ),
                      ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
