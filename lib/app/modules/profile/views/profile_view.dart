import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF008641).withOpacity(0.8),
      ),
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
                  height: 150,
                  width: Get.width,
                  color: Color(0xFF008641).withOpacity(0.8),
                ),
              ),
              Container(
                width: 360,
                height: 160,
                margin: EdgeInsets.only(
                  top: 30,
                  left: ((Get.width - 360) / 2),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  color: Color(0xFFF9F9F9),
                  border: Border.all(
                    color: Color(0xFFD9D9D9),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFF008641).withOpacity(0.8),
                          width: 3,
                        ),
                        color: Colors.amber,
                        borderRadius: BorderRadius.all(
                          Radius.circular(100),
                        ),
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          "assets/images/zainal.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "ZAINAL ABIDIN",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "Sreeya Smart Farm",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 30,
                              width: 160,
                              decoration: BoxDecoration(
                                color: Color(0xFFF9F9F9).withOpacity(0.7),
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: Color(0xFFD9D9D9),
                                ),
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
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.only(top: 30, left: 20, right: 20),
              children: [
                ProfileMenu(
                  icons: Icons.person,
                  menu: "Edit Profile",
                ),
                SizedBox(
                  height: 10,
                ),
                ProfileMenu(
                  icons: Icons.lock_rounded,
                  menu: "Change Password",
                ),
                SizedBox(
                  height: 10,
                ),
                ProfileMenu(
                  icons: Icons.school_rounded,
                  menu: "Sreeya Smart Farm Academy",
                ),
                SizedBox(
                  height: 10,
                ),
                ProfileMenu(
                  icons: Icons.groups_2_rounded,
                  menu: "Request Technical Visit",
                ),
                SizedBox(
                  height: 10,
                ),
                ProfileMenu(
                  icons: Icons.headphones_rounded,
                  menu: "Smart Help Center",
                ),
                SizedBox(
                  height: 10,
                ),
                ProfileMenu(
                  icons: Icons.info_rounded,
                  menu: "About Sreeya Smart Farm",
                ),
                SizedBox(
                  height: 10,
                ),
                ProfileMenu(
                  icons: Icons.logout_rounded,
                  menu: "Log Out",
                ),
                SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 28,
                      width: 43,
                      child: Image.asset(
                        "assets/images/logo_sm.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Transformation Office",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "Version 1.0",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF959CA3),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    required this.icons,
    required this.menu,
    super.key,
  });

  final IconData icons;
  final String menu;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 50,
        decoration: BoxDecoration(),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      icons,
                      size: 25,
                      color: Color(0xFF959CA3).withOpacity(0.9),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      menu,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF959CA3).withOpacity(0.8),
                      ),
                    )
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF959CA3).withOpacity(0.9),
                  size: 17,
                ),
              ],
            ),
            Divider(
              color: Color(0xFF959CA3).withOpacity(0.3),
              thickness: 1,
            ),
          ],
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
