import 'package:flutter/material.dart';
import 'package:iot_smart_home/style/color_pallete.dart';
import 'package:iot_smart_home/utils/routes.dart';

import 'style/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(primarySwatch: Palette.redToLight, textTheme: myTextTheme),
      initialRoute: '/',
      routes: routes,
    );
  }
}
