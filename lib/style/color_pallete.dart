//palette.dart
import 'package:flutter/material.dart';

class Palette {
  static const MaterialColor redToLight = MaterialColor(
    0xffe55f48, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xfffa6149), //10%
      100: Color(0xfffb715b), //20%
      200: Color(0xfffb816d), //30%
      300: Color(0xfffc9080), //40%
      400: Color(0xfffca092), //50%
      500: Color(0xfffdb0a4), //60%
      600: Color(0xfffdc0b6), //70%
      700: Color(0xfffed0c8), //80%
      800: Color(0xfffedfdb), //90%
      900: Color(0xffffffff), //100%
    },
  );
} // you can define define int 500 as the default shade and add your lighter tints above and darker tints below.
