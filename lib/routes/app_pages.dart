import 'package:dioapipicture/module/dashboard/dashboard_binding.dart';
import 'package:dioapipicture/module/dashboard/dashboard_view.dart';
import 'package:dioapipicture/module/login/login_binding.dart';
import 'package:dioapipicture/module/login/login_view.dart';
import 'package:get/get.dart';

import 'app_routes.dart';

class AppPages{
  static const INITIAL = AppRoutes.LOGIN;
  static final pages = [
    GetPage(
        name: AppRoutes.LOGIN,
        page: () => const LoginPage(),
        bindings: [
          LoginBinding(),
        ],
    ),
    GetPage(
      name: AppRoutes.DASHBOARD,
      page: () => const DashboardPage(),
      bindings: [
        DashboardBinding(),
      ],
    ),
  ];
}