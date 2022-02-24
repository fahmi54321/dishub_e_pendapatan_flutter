import 'package:dishub_e_pendapatan_flutter/resource/colors.dart';
import 'package:dishub_e_pendapatan_flutter/widget/v_text.dart';
import 'package:dishub_e_pendapatan_flutter/widget/v_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JenisPendapatanBlud extends StatelessWidget {
  const JenisPendapatanBlud({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          vText(
            'Jumlah yang harus dipenuhi setiap',
            fontWeight: FontWeight.w600,
            fontSize: 12,
            color: Warna.darkGrey,
          ),
          vText(
            'Rp 855.000.000',
            fontWeight: FontWeight.w700,
            fontSize: 14,
            color: Warna.primaryColor,
          ),
          SizedBox(
            height: 20,
          ),
          VListTileRincianPendapatan(),
          VListTileRincianPendapatan(),
        ],
      ),
      bgColor: Warna.lightGrey2,
    );
  }
}
