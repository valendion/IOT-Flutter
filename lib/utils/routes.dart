import 'package:flutter/cupertino.dart';
import 'package:iot_smart_home/pages/home_page/home_page.dart';
import 'package:iot_smart_home/pages/splash_page.dart';

Map<String, Widget Function(BuildContext)> routes = {
  '/': (context) => SplashPage(),
  HomePage.routeName: (context) => HomePage()
};
