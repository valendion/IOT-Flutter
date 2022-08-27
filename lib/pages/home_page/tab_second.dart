import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import '../../style/theme.dart';

Widget tabSecond(BuildContext context) {
  return Stack(children: [
    Positioned(
        left: 0,
        right: 0,
        bottom: 10,
        child: Container(
            height: 150,
            width: 150,
            child: SvgPicture.asset('assets/img/illustration_iot.svg'))),
    Column(
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
                FlutterSwitch(value: false, onToggle: (value) {})
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
                FlutterSwitch(value: false, onToggle: (value) {})
              ],
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.all(16),
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10), //border corner radius
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Kipas',
                    style: Theme.of(context).textTheme.headline6?.merge(
                        TextStyle(
                            color: greyColor, fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    'On',
                    style:
                        Theme.of(context).textTheme.headline4?.merge(TextStyle(
                              color: greyColor,
                            )),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.all(16),
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10), //border corner radius
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
                    'On',
                    style:
                        Theme.of(context).textTheme.headline4?.merge(TextStyle(
                              color: greyColor,
                            )),
                  ),
                ],
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.all(16),
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10), //border corner radius
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
                    'On',
                    style:
                        Theme.of(context).textTheme.headline4?.merge(TextStyle(
                              color: greyColor,
                            )),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.all(16),
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10), //border corner radius
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
                    'On',
                    style:
                        Theme.of(context).textTheme.headline4?.merge(TextStyle(
                              color: greyColor,
                            )),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    ),
  ]);
}
