import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/database.dart';
import 'package:iot_smart_home/model/monitoring_model.dart';
import 'package:iot_smart_home/utils/network_firebase.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';
import '../../style/theme.dart';

Widget tabFirst(BuildContext context, String dateFormat, FirebaseDatabase fb) {
  DatabaseReference ref = fb.ref('monitoring');

  // Query monitoringSnapshot = ref.get();
  // final snapshot = ref.child('kelembaban').get();
  // ref.onValue.listen(
  //   (event) {
  //     print(event.snapshot.value);

  //     // Map<dynamic, dynamic> values = monitoringSnapshot.
  //     // monitoring = Monitoring.fromJson(event.snapshot.value);
  //   },
  // );
  // NetworkFirebase networkFirebase = NetworkFirebase();
  return FirebaseDatabaseQueryBuilder(
      query: ref,
      builder: (context, snapshot, _) {
        if (snapshot.isFetching) {
          return const CupertinoActivityIndicator();
        }
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.all(20),
                height: 250,
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
                      offset: const Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        'Rumah \(Status Monitoring\)',
                        style: Theme.of(context).textTheme.subtitle1?.merge(
                            TextStyle(
                                color: greyColor, fontWeight: FontWeight.bold)),
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            color: greenColor,
                            shape: BoxShape.circle,
                          ),
                        ),
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
                        const SizedBox(
                          width: 12,
                        ),
                        Text(
                          snapshot.docs[2].value.toString(),
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2
                              ?.merge(TextStyle(
                                color: greyColor,
                              )),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            color: greenColor,
                            shape: BoxShape.circle,
                          ),
                        ),
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
                          width: 60,
                        ),
                        Text(
                          snapshot.docs[3].value?.toString() ?? '0',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2
                              ?.merge(TextStyle(
                                color: greyColor,
                              )),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            color: greenColor,
                            shape: BoxShape.circle,
                          ),
                        ),
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
                        // Text(
                        //   // snapshot.docs[1].value?.toString() ?? '0',
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
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            color: greenColor,
                            shape: BoxShape.circle,
                          ),
                        ),
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
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            color: greenColor,
                            shape: BoxShape.circle,
                          ),
                        ),
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
                        // Text(
                        //   '100',
                        //   style: Theme.of(context)
                        //       .textTheme
                        //       .bodyText2
                        //       ?.merge(TextStyle(
                        //         color: greyColor,
                        //       )),
                        // ),
                      ],
                    ),
                  ],
                )),
            const SizedBox(
              height: 16,
            ),
            Container(
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
              child: DigitalClock(
                areaWidth: 180,
                showSecondsDigit: false,
                hourMinuteDigitTextStyle: TextStyle(
                  color: orangeColor,
                  fontSize: 50,
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
            // Container(
            //     height: 120,
            //     width: double.infinity,
            //     child: SvgPicture.asset('assets/img/illustration_iot.svg')),
          ],
        );
      });
}
