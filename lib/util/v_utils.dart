import 'package:flutter/material.dart';
import 'package:get/get.dart' as get_package;

// class VUtils {
//   static showDefaultDialog(BuildContext context,
//       {required String title, required String message, onPressed}) {
//     get_package.Get.defaultDialog(
//         title: title,
//         middleText: message,
//         barrierDismissible: false,
//         actions: [
//           RaisedButton(
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             child: Text(
//               "OK",
//               style: TextStyle(color: Colors.white),
//             ),
//             color: Warna.primaryColor,
//           )
//         ]);
//   }
//
//   static showDefaultAlertDialog(BuildContext context,
//       {required String title, required String message, onPressed}) {
//     showDialog(
//         context: context,
//         builder: (BuildContext context) => DefaultAlertDialog(
//               context,
//               title,
//               message,
//               onPressed: onPressed,
//             ));
//   }
//
//   //
//   //
//   // static showCustomAlertDialog(BuildContext context,
//   //     {required String title, required String message, onPressed}) {
//   //   showDialog(
//   //       context: context,
//   //       builder: (BuildContext context) => CustomAlertDialog(
//   //             context,
//   //             title,
//   //             message,
//   //             onPressed: onPressed,
//   //           ));
//   // }
//
//   static showAlertDialog(
//     BuildContext context, {
//     required String title,
//     required String message,
//     onPressed,
//   }) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: new Text(title),
//           content: new Text(message),
//           actions: <Widget>[
//             new FlatButton(
//               child: new Text("OK"),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
