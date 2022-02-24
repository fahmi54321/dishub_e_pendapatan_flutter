import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dishub_e_pendapatan_flutter/resource/colors.dart';
import 'package:dishub_e_pendapatan_flutter/widget/v_text.dart';
import 'package:dishub_e_pendapatan_flutter/widget/v_widgets.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({Key? key}) : super(key: key);

  @override
  _AdminPageState createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        VCard(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              vText(
                "Total Pendapatan",
                fontSize: 16,
                color: Warna.darkGrey,
                fontWeight: FontWeight.w600,
              ),
              FittedBox(
                child: vText(
                  "Rp 16.307.886.412",
                  fontSize: 36,
                  color: Warna.primaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        vText(
                          "Target Triwulan",
                          fontSize: 12,
                          color: Warna.darkGrey,
                          fontWeight: FontWeight.w500,
                        ),
                        vText(
                          "Rp 16.307.886.412",
                          fontSize: 14,
                          color: Warna.primaryColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        vText(
                          "Kurang",
                          fontSize: 12,
                          color: Warna.darkGrey,
                          fontWeight: FontWeight.w500,
                        ),
                        vText(
                          "Rp 3.729.152.014",
                          fontSize: 14,
                          color: Warna.primaryColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              VProgressBar(
                percent: 81,
              ),
            ],
          ),
        )
      ],
    );
  }
}
