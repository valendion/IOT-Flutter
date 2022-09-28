import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:iot_smart_home/pages/home_page/tab_first.dart';
import 'package:iot_smart_home/pages/home_page/tab_second.dart';
import 'package:iot_smart_home/pages/home_page/tab_third.dart';
import 'package:iot_smart_home/style/theme.dart';


class HomePage extends StatelessWidget {
  static const routeName = '/home_page';
  final fb = FirebaseDatabase.instance;
  String dateFormat = DateFormat("EEEEE, dd/MM/yyyy").format(DateTime.now());

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Smarthome App',
                style: Theme.of(context).textTheme.bodyText1?.merge(
                    TextStyle(color: greyColor, fontWeight: FontWeight.bold))),
          ),
          backgroundColor: whiteColor,
          bottom: TabBar(
            isScrollable: false,
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
                color: greyColor.withOpacity(0.5), //color of shadow
                spreadRadius: 5, //spread radius
                blurRadius: 7, // blur radius
                offset: const Offset(0, 2), // changes position of shadow
              ),
            ], borderRadius: BorderRadius.circular(50), color: whiteColor),
          ),
        ),
        body: TabBarView(children: [
          tabFirst(context, dateFormat, fb),
          tabSecond(context, fb),
          // tabThird(context, historis)
          tabThird(context, fb)
        ]),
      ),
    );
  }
}
