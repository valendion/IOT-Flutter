import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:iot_smart_home/style/theme.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/home_page';
  String dateFormat = DateFormat("EEEEE, dd/MM/yyyy").format(DateTime.now());

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: whiteColor,
          bottom: TabBar(
            tabs: [
              Tab(
                  child: Text(
                'Dashboard',
                style: TextStyle(color: greyColor),
              )),
              Tab(
                  child: Text(
                'Controller',
                style: TextStyle(color: greyColor),
              )),
              Tab(
                  child: Text(
                'History',
                style: TextStyle(color: greyColor),
              ))
            ],
            indicator: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5), //color of shadow
                spreadRadius: 5, //spread radius
                blurRadius: 7, // blur radius
                offset: const Offset(0, 2), // changes position of shadow
                //first paramerter of offset is left-right
                //second parameter is top to down
              ),
            ], borderRadius: BorderRadius.circular(50), color: whiteColor),
          ),
        ),
        body: TabBarView(children: [
          Column(
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
                          'Rumah \(Status Monitoring\)',
                          style: Theme.of(context).textTheme.subtitle2?.merge(
                              TextStyle(
                                  color: greyColor,
                                  fontWeight: FontWeight.bold)),
                        ),
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
                            'Kelembaban \t 100',
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
                            'Suhu \t \t \t \t \t \t \t 100',
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
                            'Kadar Gas \t \t \t 100',
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
                            'Deteksi Api \t \t 100',
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
                            'Status Alarm \t 100',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                ?.merge(TextStyle(
                                  color: greyColor,
                                )),
                          ),
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
                child: DigitalClock(
                  areaWidth: 180,
                  showSecondsDigit: false,
                  hourMinuteDigitTextStyle: TextStyle(
                    color: greyColor,
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
              Expanded(
                  child: SvgPicture.asset('assets/img/illustration_iot.svg')),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
          const Text('Tab 2'),
          const Text('Tab 3')
        ]),
      ),
    );
  }
}
