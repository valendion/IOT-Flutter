import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iot_smart_home/model/history_model.dart';
import 'package:iot_smart_home/model/history_model_dummy.dart';
import 'package:iot_smart_home/style/theme.dart';

import '../utils/image_component.dart';

Widget listHistory(BuildContext context, HistoryModeDummy historyModel) {
  var imageComponent = ImageComponent();
  return Card(
    child: Row(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(historyModel.gambar),
          )),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              historyModel.namaKomponen,
              style: Theme.of(context).textTheme.bodyText1?.merge(
                  TextStyle(color: blackColor, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Icon(
                  Icons.schedule,
                  color: orangeColor,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  historyModel.waktu,
                  style: Theme.of(context)
                      .textTheme
                      .caption
                      ?.merge(TextStyle(color: greyColor)),
                ),
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                const Icon(
                  Icons.ads_click,
                  color: const Color(0xfffa6149),
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  historyModel.aksi,
                  style: Theme.of(context)
                      .textTheme
                      .caption
                      ?.merge(TextStyle(color: greyColor)),
                ),
              ],
            ),
          ],
        )
      ],
    ),
  );
}

// Widget listHistory(BuildContext context, HistoryModel historyModel) {
//   var imageComponent = ImageComponent();

//   return Card(
//     child: Row(
//       children: [
//         Container(
//           width: 100,
//           height: 100,
//           decoration: BoxDecoration(
//               image: DecorationImage(
//             image: AssetImage(
//                 imageComponent.getImageComponent(historyModel.namaKomponen) ??
//                     ''),
//           )),
//         ),
//         const SizedBox(
//           width: 10,
//         ),
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               historyModel.namaKomponen,
//               style: Theme.of(context).textTheme.bodyText1?.merge(
//                   TextStyle(color: blackColor, fontWeight: FontWeight.bold)),
//             ),
//             const SizedBox(
//               height: 4,
//             ),
//             Row(
//               children: [
//                 Icon(
//                   Icons.schedule,
//                   color: orangeColor,
//                 ),
//                 const SizedBox(
//                   width: 8,
//                 ),
//                 Text(
//                   historyModel.waktu,
//                   style: Theme.of(context)
//                       .textTheme
//                       .caption
//                       ?.merge(TextStyle(color: greyColor)),
//                 ),
//               ],
//             ),
//             const SizedBox(
//               height: 4,
//             ),
//             Row(
//               children: [
//                 const Icon(
//                   Icons.ads_click,
//                   color: const Color(0xfffa6149),
//                 ),
//                 const SizedBox(
//                   width: 8,
//                 ),
//                 Text(
//                   historyModel.aksi,
//                   style: Theme.of(context)
//                       .textTheme
//                       .caption
//                       ?.merge(TextStyle(color: greyColor)),
//                 ),
//               ],
//             ),
//           ],
//         )
//       ],
//     ),
//   );
// }