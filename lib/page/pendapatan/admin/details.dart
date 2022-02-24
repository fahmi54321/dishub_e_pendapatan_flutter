import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:dishub_e_pendapatan_flutter/resource/colors.dart';
import 'package:dishub_e_pendapatan_flutter/widget/v_text.dart';
import 'package:dishub_e_pendapatan_flutter/widget/v_widgets.dart';

class AdminPageDetails extends StatelessWidget {
  const AdminPageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VCard(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          vText(
            "Total Pendapatan Triwulan 1",
            fontSize: 16,
            color: Warna.darkGrey,
            fontWeight: FontWeight.w600,
          ),
          FittedBox(
            child: vText(
              "Rp 9.539.576.500",
              fontSize: 36,
              color: Warna.primaryColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ListTile(
            leading: Image.asset('assets/png/parkir.png'),
            title: vText('Target Triwulan 1'),
            subtitle: vText('Rp 10.468.947.000'),
            trailing: Icon(
              Icons.flag,
              color: Warna.orange,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: vText(
              'Kurang Rp 929.370.500',
              fontWeight: FontWeight.w600,
              fontSize: 12,
              color: Warna.darkGrey,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          VProgressBar(
            percent: 75,
          ),
        ],
      ),
    );
  }
}
