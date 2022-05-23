import 'package:application/app/modules/initial/initial_binding.dart';
import 'package:application/app/modules/initial/initial_view.dart';
import 'package:application/app/modules/signup/bindings/signup_binding.dart';
import 'package:application/app/modules/signup/views/signup_view.dart';
import 'package:application/app/modules/welcome/bindings/welcome_binding.dart';
import 'package:application/app/modules/welcome/views/welcome_view.dart';
import 'package:get/get.dart';

import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import 'app_routes.dart';

// chamado as telas
class AppPages {
  static const INITIAL = Routes.INITIAL;
  static final routes = [
    GetPage(
      name: Routes.INITIAL,
      page: () => InitialView(),
      binding: InitialBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.WELCOME,
      page: () => WelcomeView(),
      binding: WelcomeBinding(),
    ),
    GetPage(
      name: Routes.SIGNUP,
      page: () => SignupView(),
      binding: SignupBinding(),
    )
  ];
}
