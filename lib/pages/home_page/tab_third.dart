import 'dart:convert';

import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iot_smart_home/bloc/history/history_action_bloc.dart';
import 'package:iot_smart_home/widget/list_history.dart';

import '../../model/history_model.dart';

Widget tabThird(BuildContext context, FirebaseDatabase fb) {
  DatabaseReference ref = fb.ref();
  DatabaseReference dbList = fb.ref('riwayat');
  List<HistoryModel>? dataListHistoris = [];
  Map<String, dynamic>? mapHistory;
  var historiActionBloc = context.read<HistoryActionBloc>();
  var historyAdd = HistoryActionAdd();

  dbList.onValue.listen((DatabaseEvent event) {
    dataListHistoris.clear();
    // print(event.snapshot.value);
    mapHistory = jsonDecode(jsonEncode(event.snapshot.value));

    mapHistory?.forEach((key, value) {
      var history = HistoryModel(
          namaKomponen: value['nama_komponen'],
          waktu: value['waktu'],
          aksi: value['aksi']);
      dataListHistoris.add(history);
    });
    // dataListHistoris.sort((a, b) {
    //   DateTime dt2 = DateTime.parse(b.waktu);
    //   DateTime dt1 = DateTime.parse(a.waktu);
    //   return dt2.compareTo(dt1);
    // });
    // print('Tes ' + dataListHistoris.toString());
    historyAdd.setHistoris(dataListHistoris);
    historiActionBloc.add(historyAdd);
  });

  return BlocBuilder<HistoryActionBloc, HistoryActionState>(
    builder: (context, state) {
      return ListView.builder(
          itemCount: state.historis.length,
          itemBuilder: (BuildContext context, int index) {
            return listHistory(context, state.historis[index]);
          });
    },
  );
}
