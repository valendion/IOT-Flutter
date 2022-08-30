import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iot_smart_home/bloc/controller_door/controller_door_bloc.dart';
import 'package:iot_smart_home/bloc/controller_fan/controller_fan_bloc.dart';
import 'package:iot_smart_home/bloc/controller_fence/controller_fence_bloc.dart';
import '../../bloc/controller_iron/controller_iron_bloc.dart';
import '../../bloc/controller_lamp_living_room/controller_lamp_living_room_bloc.dart';
import '../../bloc/controller_lamp_patio/controller_lamp_patio_bloc.dart';
import '../../style/theme.dart';

Widget tabSecond(BuildContext context) {
  var controllerBlocDoor = context.read<ControllerBlocDoor>();
  var controllerBlocFence = context.read<ControllerFenceBloc>();
  var controllerBlocFan = context.read<ControllerFanBloc>();
  var controllerBlocIron = context.read<ControllerIronBloc>();
  var controllerBlocLampPatio = context.read<ControllerLampPatioBloc>();
  var controllerBlocLampLivingRoom =
      context.read<ControllerLampLivingRoomBloc>();
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.all(16),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30), //border corner radius
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5), //color of shadow
                spreadRadius: 5, //spread radius
                blurRadius: 7, // blur radius
                offset: const Offset(0, 2), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Pagar',
                style: Theme.of(context).textTheme.headline6?.merge(TextStyle(
                      color: greyColor,
                    )),
              ),
              BlocBuilder<ControllerFenceBloc, ControllerStateFence>(
                builder: (context, state) {
                  return FlutterSwitch(
                      activeColor: orangeColor,
                      value: state.statusFence,
                      onToggle: (value) {
                        if (state.statusFence == true) {
                          controllerBlocFence.add(StatusOffFence());
                        } else {
                          controllerBlocFence.add(StatusOnFence());
                        }
                      });
                },
              )
            ],
          )),
      Container(
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.all(16),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30), //border corner radius
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5), //color of shadow
                spreadRadius: 5, //spread radius
                blurRadius: 7, // blur radius
                offset: const Offset(0, 2), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Pintu',
                style: Theme.of(context).textTheme.headline6?.merge(TextStyle(
                      color: greyColor,
                    )),
              ),
              BlocBuilder<ControllerBlocDoor, ControllerStateDoor>(
                builder: (context, state) {
                  return FlutterSwitch(
                      activeColor: orangeColor,
                      value: state.statusDoor,
                      onToggle: (value) {
                        if (state.statusDoor == true) {
                          controllerBlocDoor.add(StatusOffDoor());
                        } else {
                          controllerBlocDoor.add(StatusOnDoor());
                        }
                      });
                },
              )
            ],
          )),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BlocBuilder<ControllerFanBloc, ControllerFanState>(
              builder: (context, state) {
            return GestureDetector(
                onTap: () {
                  if (state.statusFan == true) {
                    controllerBlocFan.add(StatusOffFan());
                  } else {
                    controllerBlocFan.add(StatusOnFan());
                  }
                },
                child: Container(
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.all(16),
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(10), //border corner radius
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), //color of shadow
                        spreadRadius: 5, //spread radius
                        blurRadius: 7, // blur radius
                        offset:
                            const Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Kipas',
                          style: Theme.of(context).textTheme.headline6?.merge(
                              TextStyle(
                                  color: greyColor,
                                  fontWeight: FontWeight.bold)),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          state.statusFan ? 'On' : 'Off',
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              ?.merge(TextStyle(
                                color: orangeColor,
                              )),
                        )
                      ]),
                ));
          }),
          BlocBuilder<ControllerIronBloc, ControllerIronState>(
            builder: (context, state) {
              return GestureDetector(
                onTap: () {
                  if (state.statusIron == true) {
                    controllerBlocIron.add(StatusOffIron());
                  } else {
                    controllerBlocIron.add(StatusOnIron());
                  }
                },
                child: Container(
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.all(16),
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(10), //border corner radius
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), //color of shadow
                        spreadRadius: 5, //spread radius
                        blurRadius: 7, // blur radius
                        offset:
                            const Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Setrika',
                        style: Theme.of(context).textTheme.headline6?.merge(
                            TextStyle(
                                color: greyColor, fontWeight: FontWeight.bold)),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        state.statusIron ? 'On' : 'Off',
                        style: Theme.of(context)
                            .textTheme
                            .headline4
                            ?.merge(TextStyle(
                              color: orangeColor,
                            )),
                      ),
                    ],
                  ),
                ),
              );
            },
          )
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BlocBuilder<ControllerLampPatioBloc, ControllerLampPatioState>(
            builder: (context, state) {
              return GestureDetector(
                onTap: () {
                  if (state.statusLampPatio == true) {
                    controllerBlocLampPatio.add(StatusOffLampPatio());
                  } else {
                    controllerBlocLampPatio.add(StatusOnLampPatio());
                  }
                },
                child: Container(
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.all(16),
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(10), //border corner radius
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), //color of shadow
                        spreadRadius: 5, //spread radius
                        blurRadius: 7, // blur radius
                        offset:
                            const Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Lampu Teras',
                        style: Theme.of(context).textTheme.headline6?.merge(
                            TextStyle(
                                color: greyColor, fontWeight: FontWeight.bold)),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        state.statusLampPatio ? 'On' : 'Off',
                        style: Theme.of(context)
                            .textTheme
                            .headline4
                            ?.merge(TextStyle(
                              color: orangeColor,
                            )),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          BlocBuilder<ControllerLampLivingRoomBloc,
              ControllerLampLivingRoomState>(
            builder: (context, state) {
              return GestureDetector(
                onTap: () {
                  if (state.statusLampLivingRoom == true) {
                    controllerBlocLampLivingRoom.add(StatusOffLampLivingRoom());
                  } else {
                    controllerBlocLampLivingRoom.add(StatusOnLampLivingRoom());
                  }
                },
                child: Container(
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.all(16),
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(10), //border corner radius
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), //color of shadow
                        spreadRadius: 5, //spread radius
                        blurRadius: 7, // blur radius
                        offset:
                            const Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Lampu \nRuang Tamu',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline6?.merge(
                            TextStyle(
                                color: greyColor, fontWeight: FontWeight.bold)),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        (state.statusLampLivingRoom) ? 'On' : 'Off',
                        style: Theme.of(context)
                            .textTheme
                            .headline4
                            ?.merge(TextStyle(
                              color: orangeColor,
                            )),
                      ),
                    ],
                  ),
                ),
              );
            },
          )
        ],
      ),
    ],
  );
}
