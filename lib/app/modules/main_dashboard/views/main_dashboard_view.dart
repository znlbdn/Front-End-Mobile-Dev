import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:smartfarm_app/app/routes/app_pages.dart';

import '../controllers/main_dashboard_controller.dart';

class MainDashboardView extends GetView<MainDashboardController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Statistik Kandang',
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: IconButton(
          onPressed: () => Get.toNamed(Routes.NAVIGATION),
          icon: Icon(Icons.arrow_back_rounded),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          StatistiCard(
            lantai: "1",
            populasi: "25,000",
            mati: "320",
            berat: "600",
            umur: "25",
          ),
          SizedBox(
            height: 20,
          ),
          StatistiCard(
            lantai: "2",
            populasi: "26,000",
            mati: "160",
            berat: "500",
            umur: "24",
          ),
          SizedBox(
            height: 20,
          ),
          StatistiCard(
            lantai: "3",
            populasi: "24,000",
            mati: "360",
            berat: "600",
            umur: "28",
          ),
          SizedBox(
            height: 20,
          ),
          StatistiCard(
            lantai: "4",
            populasi: "25,000",
            mati: "260",
            berat: "500",
            umur: "29",
          ),
        ],
      ),
    );
  }
}

class StatistiCard extends StatelessWidget {
  const StatistiCard({
    required this.lantai,
    required this.populasi,
    required this.mati,
    required this.berat,
    required this.umur,
    super.key,
  });

  final String lantai;
  final String populasi;
  final String mati;
  final String berat;
  final String umur;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Color(0xFFD9D9D9),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "Statistik Lantai $lantai",
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0XFF008641),
                ),
              ),
              Text(
                "Ekor / Hari / Gr",
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF777777),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Divider(
            color: Color(0xFFB4B4B8),
            thickness: 1,
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Populasi Sekarang",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0XFF777777),
                    ),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Text(
                    populasi,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0XFF777777),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Kematian",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0XFF777777),
                    ),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Text(
                    mati,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0XFF777777),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Berat Ayam",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0XFF777777),
                    ),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Text(
                    berat,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0XFF777777),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Umur Ayam",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0XFF777777),
                    ),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Text(
                    umur,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0XFF777777),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
