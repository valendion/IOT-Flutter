import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iot_smart_home/bloc/controller_door/controller_door_bloc.dart';
import 'package:iot_smart_home/style/color_pallete.dart';
import 'package:iot_smart_home/utils/routes.dart';

import 'bloc/controller_fan/controller_fan_bloc.dart';
import 'bloc/controller_fence/controller_fence_bloc.dart';
import 'bloc/controller_iron/controller_iron_bloc.dart';
import 'bloc/controller_lamp_living_room/controller_lamp_living_room_bloc.dart';
import 'bloc/controller_lamp_patio/controller_lamp_patio_bloc.dart';
import 'style/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ControllerBlocDoor>(
          create: (context) => ControllerBlocDoor(),
        ),
        BlocProvider<ControllerFenceBloc>(
          create: (context) => ControllerFenceBloc(),
        ),
        BlocProvider<ControllerFanBloc>(
          create: (context) => ControllerFanBloc(),
        ),
        BlocProvider<ControllerIronBloc>(
          create: (context) => ControllerIronBloc(),
        ),
        BlocProvider<ControllerLampPatioBloc>(
          create: (context) => ControllerLampPatioBloc(),
        ),
        BlocProvider<ControllerLampLivingRoomBloc>(
          create: (context) => ControllerLampLivingRoomBloc(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
            primarySwatch: Palette.redToLight, textTheme: myTextTheme),
        initialRoute: '/',
        routes: routes,
      ),
    );
  }
}
