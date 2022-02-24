import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:intl/intl.dart';


class Utils {
  static String DISPLAY_DATE_FORMAT = "dd MMMM yyyy";
  static String DISPLAY_DATE_FORMAT2 = "dd MMM yyyy";
  static String SEND_DATE_FORMAT = "dd-MM-yyyy";
  static String SEND_DATE_FORMAT2 = "yyyy-MM-dd";

  static String dateToString(DateTime time, String format) {
    if (time == null) return "";
    var formatter = DateFormat(format);
    String formatted = formatter.format(time);
    return formatted;
  }

  String formatNumberToRupiah(int value) {
    final formatCurrency = new NumberFormat("#,##0", "id_ID");
    String result = formatCurrency.format(value);
    var rupiah = "Rp. $result,-";
    return rupiah;
  }

  //random string
  static const _chars =
      'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  static Random _rnd = Random();

  static String getRandomString(int length) =>
      String.fromCharCodes(Iterable.generate(
          length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));

  String hitungselisihJam(DateTime tanggalMulai, DateTime tanggalAkhir) {
    final datestart =
        DateTime(tanggalMulai.year, tanggalMulai.month, tanggalMulai.day);
    final dateend =
        DateTime(tanggalAkhir.year, tanggalAkhir.month, tanggalAkhir.day);
    return dateend.difference(datestart).inHours.toString();
  }

 
}

class TimeUtils {
  DateTime? _start;

  void start() {
    _start = DateTime.now();
  }

  Duration current() {
    if (_start == null) throw 'not start';
    return DateTime.now().difference(_start!);
  }

  String currentMs() {
    return '${current().inMilliseconds}ms';
  }
}

Future<Uint8List> loadFromAsset(String key) async {
  final ByteData byteData = await rootBundle.load(key);
  return byteData.buffer.asUint8List();
}
