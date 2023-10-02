import 'package:get/get.dart';
import 'package:getx_app/utils/routes/routes_name.dart';
import 'package:getx_app/view/home/home_bindings.dart';
import 'package:getx_app/view/home/home_view.dart';
import 'package:getx_app/view/splash/splash_bindings.dart';
import 'package:getx_app/view/splash/splash_view.dart';

class AppRoutes {
  static List<GetPage<dynamic>>? getPages = [
    GetPage(name: RoutesName.splashView, page: () => SplashView(), binding: SplashBindings()),
    GetPage(name: RoutesName.homeView, page: () => HomeView(), binding: HomeBindings()),
  ];
}
