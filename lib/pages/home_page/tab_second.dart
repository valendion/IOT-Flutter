import 'dart:convert';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:iot_smart_home/bloc/controller_door/controller_door_bloc.dart';
import 'package:iot_smart_home/bloc/controller_fan/controller_fan_bloc.dart';
import 'package:iot_smart_home/bloc/controller_fence/controller_fence_bloc.dart';
import 'package:iot_smart_home/model/history_model.dart';
import '../../bloc/controller_iron/controller_iron_bloc.dart';
import '../../bloc/controller_lamp_living_room/controller_lamp_living_room_bloc.dart';
import '../../bloc/controller_lamp_patio/controller_lamp_patio_bloc.dart';
import '../../model/kontrol_status_model.dart';
import '../../style/theme.dart';

Map toJsonHistory(String aksi, String namaKomponen, String waktu) {
  var historyModel =
      HistoryModel(aksi: aksi, namaKomponen: namaKomponen, waktu: waktu);
  return historyModel.toJson();
}

Widget tabSecond(BuildContext context, FirebaseDatabase fb) {
  DatabaseReference ref = fb.ref();
  var historyRef = ref.child('riwayat');

  late KontrolStatusModel status;

  String elementClick = '';

  String dateFormat = DateFormat("yyyy-MM-dd H:mm:ss").format(DateTime.now());

  var controllerBlocDoor = context.read<ControllerBlocDoor>();
  var controllerBlocFence = context.read<ControllerFenceBloc>();
  var controllerBlocFan = context.read<ControllerFanBloc>();
  var controllerBlocIron = context.read<ControllerIronBloc>();
  var controllerBlocLampPatio = context.read<ControllerLampPatioBloc>();
  var controllerBlocLampLivingRoom =
      context.read<ControllerLampLivingRoomBloc>();

  ref.child('kontrol').onValue.listen((event) {
    status = KontrolStatusModel.fromJson(
        jsonDecode(jsonEncode(event.snapshot.value)));

    if (status.pintu == true) {
      controllerBlocDoor.add(StatusOnDoor());
    } else {
      controllerBlocDoor.add(StatusOffDoor());
    }

    if (status.pagar == true) {
      controllerBlocFence.add(StatusOnFence());
    } else {
      controllerBlocFence.add(StatusOffFence());
    }

    if (status.kipas == true) {
      controllerBlocFan.add(StatusOnFan());
    } else {
      controllerBlocFan.add(StatusOffFan());
    }

    if (status.setrika == true) {
      controllerBlocIron.add(StatusOnIron());
    } else {
      controllerBlocIron.add(StatusOffIron());
    }

    if (status.lampuTeras == true) {
      controllerBlocLampPatio.add(StatusOnLampPatio());
    } else {
      controllerBlocLampPatio.add(StatusOffLampPatio());
    }

    if (status.lampuTamu == true) {
      controllerBlocLampLivingRoom.add(StatusOnLampLivingRoom());
    } else {
      controllerBlocLampLivingRoom.add(StatusOffLampLivingRoom());
    }
  });

  return Stack(
    children: [
      Positioned(
        bottom: 16,
        right: 0,
        left: 0,
        child: Container(
            height: MediaQuery.of(context).size.height * 0.5,
            width: double.infinity,
            child: SvgPicture.asset('assets/img/illustration_iot.svg')),
      ),
      Column(
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
                    style:
                        Theme.of(context).textTheme.headline6?.merge(TextStyle(
                              color: greyColor,
                            )),
                  ),
                  BlocBuilder<ControllerFenceBloc, ControllerStateFence>(
                    builder: (context, state) {
                      return FlutterSwitch(
                          activeColor: orangeColor,
                          value: state.statusFence,
                          onToggle: (value) {
                            elementClick = 'Pagar';

                            if (state.statusFence == true) {
                              historyRef.push().set(toJsonHistory(
                                  (!state.statusFence).toString(),
                                  elementClick,
                                  dateFormat));

                              controllerBlocFence.add(StatusOffFence());
                            } else {
                              historyRef.push().set(toJsonHistory(
                                  (!state.statusFence).toString(),
                                  elementClick,
                                  dateFormat));

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
                    style:
                        Theme.of(context).textTheme.headline6?.merge(TextStyle(
                              color: greyColor,
                            )),
                  ),
                  BlocBuilder<ControllerBlocDoor, ControllerStateDoor>(
                    builder: (context, state) {
                      return FlutterSwitch(
                          activeColor: orangeColor,
                          value: state.statusDoor,
                          onToggle: (value) {
                            elementClick = 'Pintu';
                            if (state.statusDoor == true) {
                              historyRef.push().set(toJsonHistory(
                                  (!state.statusDoor).toString(),
                                  elementClick,
                                  dateFormat));
                              controllerBlocDoor.add(StatusOffDoor());
                            } else {
                              historyRef.push().set(toJsonHistory(
                                  (!state.statusDoor).toString(),
                                  elementClick,
                                  dateFormat));
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
                      elementClick = 'Kipas';
                      if (state.statusFan == true) {
                        historyRef.push().set(toJsonHistory(
                            (!state.statusFan).toString(),
                            elementClick,
                            dateFormat));
                        controllerBlocFan.add(StatusOffFan());
                      } else {
                        historyRef.push().set(toJsonHistory(
                            (!state.statusFan).toString(),
                            elementClick,
                            dateFormat));
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
                            color:
                                Colors.grey.withOpacity(0.5), //color of shadow
                            spreadRadius: 5, //spread radius
                            blurRadius: 7, // blur radius
                            offset: const Offset(
                                0, 2), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Kipas',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  ?.merge(TextStyle(
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
                      elementClick = 'Setrika';
                      if (state.statusIron == true) {
                        historyRef.push().set(toJsonHistory(
                            (!state.statusIron).toString(),
                            elementClick,
                            dateFormat));
                        controllerBlocIron.add(StatusOffIron());
                      } else {
                        historyRef.push().set(toJsonHistory(
                            (!state.statusIron).toString(),
                            elementClick,
                            dateFormat));
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
                            color:
                                Colors.grey.withOpacity(0.5), //color of shadow
                            spreadRadius: 5, //spread radius
                            blurRadius: 7, // blur radius
                            offset: const Offset(
                                0, 2), // changes position of shadow
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
                                    color: greyColor,
                                    fontWeight: FontWeight.bold)),
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
                      elementClick = 'Lampu Teras';
                      if (state.statusLampPatio == true) {
                        historyRef.push().set(toJsonHistory(
                            (!state.statusLampPatio).toString(),
                            elementClick,
                            dateFormat));
                        controllerBlocLampPatio.add(StatusOffLampPatio());
                      } else {
                        historyRef.push().set(toJsonHistory(
                            (!state.statusLampPatio).toString(),
                            elementClick,
                            dateFormat));
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
                            color:
                                Colors.grey.withOpacity(0.5), //color of shadow
                            spreadRadius: 5, //spread radius
                            blurRadius: 7, // blur radius
                            offset: const Offset(
                                0, 2), // changes position of shadow
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
                                    color: greyColor,
                                    fontWeight: FontWeight.bold)),
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
                      elementClick = 'Lampu Tamu';
                      if (state.statusLampLivingRoom == true) {
                        historyRef.push().set(toJsonHistory(
                            (!state.statusLampLivingRoom).toString(),
                            elementClick,
                            dateFormat));
                        controllerBlocLampLivingRoom
                            .add(StatusOffLampLivingRoom());
                      } else {
                        historyRef.push().set(toJsonHistory(
                            (!state.statusLampLivingRoom).toString(),
                            elementClick,
                            dateFormat));
                        controllerBlocLampLivingRoom
                            .add(StatusOnLampLivingRoom());
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
                            color:
                                Colors.grey.withOpacity(0.5), //color of shadow
                            spreadRadius: 5, //spread radius
                            blurRadius: 7, // blur radius
                            offset: const Offset(
                                0, 2), // changes position of shadow
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
                                    color: greyColor,
                                    fontWeight: FontWeight.bold)),
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
      ),
    ],
  );
}
