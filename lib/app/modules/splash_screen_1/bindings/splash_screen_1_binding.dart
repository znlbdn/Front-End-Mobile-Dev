import 'package:get/get.dart';

import '../controllers/splash_screen_1_controller.dart';

class SplashScreen1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashScreen1Controller>(
      () => SplashScreen1Controller(),
    );
  }
}
