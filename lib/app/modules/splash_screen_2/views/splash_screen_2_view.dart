import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_screen_2_controller.dart';

class SplashScreen2View extends GetView<SplashScreen2Controller> {
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
                  "assets/images/monitoring_2.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Text(
              "REALTIME MONITORING",
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
              "Monitoring in real time based on IoT \nnow you can easily performance \nmonitoring on your hand",
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
              "assets/images/nd-ob-2.png",
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}
