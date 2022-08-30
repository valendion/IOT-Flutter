import 'package:flutter/material.dart';
import 'package:iot_smart_home/utils/dummyData.dart';
import 'package:iot_smart_home/widget/list_history.dart';

import '../../model/history_model.dart';

Widget tabThird(BuildContext context, List<HistoryModel> historis) {
  return ListView.builder(
      itemCount: historis.length,
      itemBuilder: (BuildContext context, int index) {
        return listHistory(context, historis[index]);
      });
}
