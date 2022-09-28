import 'dart:convert';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:iot_smart_home/bloc/history/history_action_bloc.dart';
import 'package:iot_smart_home/pages/widget/loading_widget.dart';
import 'package:iot_smart_home/widget/list_history.dart';

import '../../bloc/loading/loading_bloc.dart';
import '../../model/history_model.dart';

Widget tabThird(BuildContext context, FirebaseDatabase fb) {
  DatabaseReference ref = fb.ref();
  DatabaseReference dbList = fb.ref('riwayat');
  List<HistoryModel>? dataListHistoris = [];
  Map<String, dynamic>? mapHistory;
  var historiActionBloc = context.read<HistoryActionBloc>();
  var historyAdd = HistoryActionAdd();
  var loadingBloc = context.read<LoadingBloc>();

  loadingBloc.add(LoadingOn());
  dbList.orderByChild('waktu').onValue.listen((DatabaseEvent event) {
    dataListHistoris.clear();
    mapHistory = jsonDecode(jsonEncode(event.snapshot.value));

    mapHistory?.forEach((key, value) {
      var history = HistoryModel(
          namaKomponen: value['nama_komponen'],
          waktu: value['waktu'],
          aksi: value['aksi']);
      dataListHistoris.add(history);
    });

    dataListHistoris.sort((a, b) {
      DateFormat inputFormat1 = DateFormat('yyyy-MM-dd H:mm:ss');
      // DateFormat inputFormat2 = DateFormat('yyyy-MM-dd');
      DateTime dt1 = inputFormat1.parse(a.waktu);
      DateTime dt2 = inputFormat1.parse(b.waktu);
      // DateTime time1 = inputFormat2.parse(inputFormat2.format(dt1));
      // DateTime time2 = inputFormat2.parse(inputFormat2.format(dt2));
      return dt2.compareTo(dt1);
    });

    historyAdd.setHistoris(dataListHistoris);
    historiActionBloc.add(historyAdd);
  });
  loadingBloc.add(LoadingOff());

  return BlocBuilder<LoadingBloc, LoadingState>(
    builder: (context, loadingState) {
      return BlocBuilder<HistoryActionBloc, HistoryActionState>(
        builder: (context, state) {
          if (loadingState.loading) {
            return const LoadingWidget();
          }

          return ListView.builder(
              itemCount: state.historis.length,
              itemBuilder: (BuildContext context, int index) {
                return listHistory(context, state.historis[index]);
              });
        },
      );
    },
  );
}
