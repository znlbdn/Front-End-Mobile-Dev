import 'package:get/get.dart';

import '../modules/devices/bindings/devices_binding.dart';
import '../modules/devices/views/devices_view.dart';
import '../modules/forgot_password/bindings/forgot_password_binding.dart';
import '../modules/forgot_password/views/forgot_password_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/main_dashboard/bindings/main_dashboard_binding.dart';
import '../modules/main_dashboard/views/main_dashboard_view.dart';
import '../modules/navigation/bindings/navigation_binding.dart';
import '../modules/navigation/views/navigation_view.dart';
import '../modules/news/bindings/news_binding.dart';
import '../modules/news/views/news_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/signup/bindings/signup_binding.dart';
import '../modules/signup/views/signup_view.dart';
import '../modules/splash_screen/bindings/splash_screen_binding.dart';
import '../modules/splash_screen/views/splash_screen_view.dart';
import '../modules/splash_screen_1/bindings/splash_screen_1_binding.dart';
import '../modules/splash_screen_1/views/splash_screen_1_view.dart';
import '../modules/splash_screen_2/bindings/splash_screen_2_binding.dart';
import '../modules/splash_screen_2/views/splash_screen_2_view.dart';
import '../modules/splash_screen_3/bindings/splash_screen_3_binding.dart';
import '../modules/splash_screen_3/views/splash_screen_3_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN_1,
      page: () => SplashScreen1View(),
      binding: SplashScreen1Binding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN_2,
      page: () => SplashScreen2View(),
      binding: SplashScreen2Binding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN_3,
      page: () => SplashScreen3View(),
      binding: SplashScreen3Binding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.FORGOT_PASSWORD,
      page: () => ForgotPasswordView(),
      binding: ForgotPasswordBinding(),
    ),
    GetPage(
      name: _Paths.MAIN_DASHBOARD,
      page: () => MainDashboardView(),
      binding: MainDashboardBinding(),
    ),
    GetPage(
      name: _Paths.DEVICES,
      page: () => DevicesView(),
      binding: DevicesBinding(),
    ),
    GetPage(
      name: _Paths.NAVIGATION,
      page: () => NavigationView(),
      binding: NavigationBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.NEWS,
      page: () => const NewsView(),
      binding: NewsBinding(),
    ),
  ];
}
