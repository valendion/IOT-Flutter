import 'dart:convert';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iot_smart_home/bloc/dashboard/first_layout/first_layout_bloc.dart';
import 'package:iot_smart_home/bloc/loading/loading_bloc.dart';
import 'package:iot_smart_home/model/monitoring_model.dart';
import 'package:iot_smart_home/pages/widget/loading_widget.dart';
import 'package:iot_smart_home/utils/constans.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';
import '../../style/theme.dart';

Widget tabFirst(BuildContext context, String dateFormat, FirebaseDatabase fb) {
  DatabaseReference ref = fb.ref('monitoring');
  Monitoring monitoring = Monitoring();
  var frisLayoutBloc = context.read<FirstLayoutBloc>();
  var loadingBloc = context.read<LoadingBloc>();
  var firstLayoutAdd = FirstLayoutAdd();

  ref.onValue.listen(
    (event) {
      loadingBloc.add(LoadingOn());
      monitoring =
          Monitoring.fromJson(jsonDecode(jsonEncode(event.snapshot.value)));
      firstLayoutAdd.monitoringFirstLayout = monitoring;
      frisLayoutBloc.add(firstLayoutAdd);
      loadingBloc.add(LoadingOff());
    },
  );
  return BlocBuilder<LoadingBloc, LoadingState>(
    builder: (context, loadingState) {
      return BlocBuilder<FirstLayoutBloc, FirstLayoutState>(
        builder: (context, state) {
          if (loadingState.loading) {
            return const LoadingWidget();
          }
          return Stack(children: [
            Positioned(
              top: 0,
              bottom: 0,
              right: 0,
              left: 0,
              child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: double.infinity,
                  child: SvgPicture.asset('assets/img/illustration_iot.svg')),
            ),
            Positioned(
                bottom: 48,
                right: 0,
                left: 0,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(30), //border corner radius
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
                      child: DigitalClock(
                        areaWidth: 180,
                        showSecondsDigit: false,
                        hourMinuteDigitTextStyle: TextStyle(
                          color: orangeColor,
                          fontSize: 40,
                        ),
                        areaDecoration: BoxDecoration(
                          color: transparentColor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(dateFormat),
                    const SizedBox(
                      height: 16,
                    ),
                  ],
                )),
            Column(
              children: [
                Container(
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.all(20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(30), //border corner radius
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            'Rumah (Status Monitoring)',
                            style: Theme.of(context).textTheme.subtitle1?.merge(
                                TextStyle(
                                    color: greyColor,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(Constans.getImage('moisture.png')),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Kelembaban',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.merge(TextStyle(
                                    color: greyColor,
                                  )),
                            ),
                            const Spacer(
                              flex: 1,
                            ),
                            Text(
                              state.monitoring.kelembaban.toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.merge(TextStyle(
                                    color: greyColor,
                                  )),
                            ),
                            const Spacer(
                              flex: 1,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(Constans.getImage('thermometer.png')),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Suhu',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.merge(TextStyle(
                                    color: greyColor,
                                  )),
                            ),
                            const SizedBox(
                              width: 45,
                            ),
                            const Spacer(
                              flex: 1,
                            ),
                            Text(
                              state.monitoring.suhu.toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.merge(TextStyle(
                                    color: greyColor,
                                  )),
                            ),
                            const Spacer(
                              flex: 1,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(
                                Constans.getImage('smoke_detector.png')),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Kadar Gas',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.merge(TextStyle(
                                    color: greyColor,
                                  )),
                            ),
                            const SizedBox(
                              width: 25,
                            ),
                            const Spacer(
                              flex: 1,
                            ),
                            const Text(''),
                            const Spacer(
                              flex: 1,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(Constans.getImage('fire_detector.png')),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Deteksi Api',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.merge(TextStyle(
                                    color: greyColor,
                                  )),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Spacer(
                              flex: 1,
                            ),
                            const Text(''),
                            const Spacer(
                              flex: 1,
                            ),
                            // Text(
                            //   // snapshot.docs[3].value?.toString() ?? '0',
                            //   '0',
                            //   style: Theme.of(context)
                            //       .textTheme
                            //       .bodyText2
                            //       ?.merge(TextStyle(
                            //         color: greyColor,
                            //       )),
                            // ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(Constans.getImage('siren.png')),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Status Alarm',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.merge(TextStyle(
                                    color: greyColor,
                                  )),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Spacer(
                              flex: 1,
                            ),
                            const Text(''),
                            const Spacer(
                              flex: 1,
                            ),
                          ],
                        ),
                      ],
                    )),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
          ]);
        },
      );
    },
  );
}
