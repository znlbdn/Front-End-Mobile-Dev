import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: Get.height * 0.25,
                  ),
                  Container(
                    height: 294,
                    width: 294,
                    child: Image.asset(
                      "assets/images/circuit.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 260,
                  ),
                  Text(
                    "Transformation Office",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: Get.height * 0.29,
                  ),
                  Container(
                    height: 172,
                    width: 243,
                    child: Image.asset(
                      "assets/images/logo_app.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "SMART",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        "FARM",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Re-thinking Poultry Industry \nin Real-time Monitoring",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
