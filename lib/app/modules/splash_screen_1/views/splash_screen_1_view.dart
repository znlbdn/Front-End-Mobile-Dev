import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_screen_1_controller.dart';

class SplashScreen1View extends GetView<SplashScreen1Controller> {
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
                  "assets/images/monitoring_1.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Text(
              "DECISION SUPPORT",
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "Easily manage your devices and help you \nto track every data that you need \nin one apps.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 150,
            ),
            Image.asset(
              "assets/images/nd-ob-1.png",
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}
