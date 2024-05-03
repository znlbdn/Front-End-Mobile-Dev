import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/devices_controller.dart';

class DevicesView extends GetView<DevicesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              ClipPath(
                clipper: ClipPathClass(),
                child: Container(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 50,
                  ),
                  height: 230,
                  width: Get.width,
                  color: Color(0xFF008641).withOpacity(0.8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "DEVICES",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Pegang Kontrol dan Kendalikan\nPerangkat IoT Anda",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Stack(
                            children: [
                              Container(
                                height: 30,
                                width: 160,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF9F9F9).withOpacity(0.7),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 20,
                                      width: 20,
                                      child: Image.asset(
                                        "assets/icons/pin_loc.png",
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "KARIKIL FARM",
                                      style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 165,
                            width: 150,
                            child: Image.asset(
                              "assets/images/virtual_person.png",
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: [
                LantaiPage(
                  lantai: "1",
                  status: true,
                ),
                SizedBox(
                  width: 15,
                ),
                LantaiPage(
                  lantai: "2",
                  status: false,
                ),
                SizedBox(
                  width: 15,
                ),
                LantaiPage(
                  lantai: "3",
                  status: false,
                ),
                SizedBox(
                  width: 15,
                ),
                LantaiPage(
                  lantai: "4",
                  status: false,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 20),
              children: [
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 8,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                  ),
                  itemBuilder: (context, index) => DevicePanels(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DevicePanels extends StatelessWidget {
  const DevicePanels({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 160,
          width: 180,
          decoration: BoxDecoration(
            color: Color(0xFFD9D9D9),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        Container(
          height: 160,
          width: 180,
          padding: EdgeInsets.only(left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Stack(
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Color(0xFFFBAA19),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      child: Image.asset(
                        "assets/icons/turbine_light.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Lantai 1",
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF777777),
                ),
              ),
              SizedBox(
                height: 1,
              ),
              Text(
                "Kipas Blower 1",
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF000000),
                ),
              ),
              SizedBox(
                height: 17,
              ),
              Stack(
                alignment: Alignment.centerRight,
                children: [
                  Container(
                    height: 30,
                    width: 75,
                    decoration: BoxDecoration(
                      color: Color(0xFFFBAA19),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 6),
                    height: 23,
                    width: 23,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class LantaiPage extends StatelessWidget {
  const LantaiPage({
    required this.lantai,
    required this.status,
    super.key,
  });

  final String lantai;
  final bool status;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      width: 100,
      decoration: BoxDecoration(
        color: (status == true) ? Color(0xFFFBAA19) : Color(0xFFD9D9D9),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          "Lantai $lantai",
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: (status == true) ? Colors.white : Color(0xFF777777),
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 15);
    path.quadraticBezierTo(0, size.height, 15, size.height);
    path.lineTo(size.width - 15, size.height);
    path.quadraticBezierTo(
        size.width, size.height, size.width, size.height - 15);
    path.lineTo(size.width, 0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
