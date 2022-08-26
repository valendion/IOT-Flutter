//palette.dart
import 'package:flutter/material.dart';

class Palette {
  static const MaterialColor redToLight = const MaterialColor(
    0xffe55f48, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    const <int, Color>{
      50: const Color(0xfffa6149), //10%
      100: const Color(0xfffb715b), //20%
      200: const Color(0xfffb816d), //30%
      300: const Color(0xfffc9080), //40%
      400: const Color(0xfffca092), //50%
      500: const Color(0xfffdb0a4), //60%
      600: const Color(0xfffdc0b6), //70%
      700: const Color(0xfffed0c8), //80%
      800: const Color(0xfffedfdb), //90%
      900: const Color(0xffffffff), //100%
    },
  );
} // you can define define int 500 as the default shade and add your lighter tints above and darker tints below.
