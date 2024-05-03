import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_screen_3_controller.dart';

class SplashScreen3View extends GetView<SplashScreen3Controller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            SizedBox(
              height: 130,
            ),
            Container(
              width: 323,
              height: 323,
              child: Center(
                child: Image.asset(
                  "assets/images/monitoring_3.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Text(
              "SMART FARMING",
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "Leading the company with integrated IoT \npoultry industries with end-to-end \nvertical supply chain",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 130,
            ),
            Container(
              width: Get.width * 0.5,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFFBAA19),
                ),
                child: Text(
                  "Start Now",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
