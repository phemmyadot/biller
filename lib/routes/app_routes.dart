import 'package:flutter/material.dart';
import '../presentation/one_container_screen/one_container_screen.dart';
import '../presentation/four_screen/four_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String oneContainerScreen = '/one_container_screen';

  static const String onePage = '/one_page';

  static const String twoPage = '/two_page';

  static const String fourScreen = '/four_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    oneContainerScreen: (context) => OneContainerScreen(),
    fourScreen: (context) => FourScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => OneContainerScreen(),
  };
}
