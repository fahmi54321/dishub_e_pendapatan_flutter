import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:dishub_e_pendapatan_flutter/resource/colors.dart';
import 'package:dishub_e_pendapatan_flutter/widget/v_text.dart';
import 'package:dishub_e_pendapatan_flutter/widget/v_widgets.dart';
import 'package:dishub_e_pendapatan_flutter/resource/strings.dart';


class PilihBulanTahunPage extends StatelessWidget {
  const PilihBulanTahunPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> listBulan = StringResources.listBulan;

    List<int> listYear = [];

    for (int x = DateTime.now().year; x > DateTime.now().year - 12; x--) {
      listYear.add(x);
    }

    return VPopUp(
      context: context,
      widget: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            vText(
              'Pilih Bulan & Tahun',
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: Warna.primaryColor,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 34,),
              child: Row(
                children: [
                  Flexible(
                    child: Container(
                      height: 200,
                      child: ListView.builder(
                        itemCount: listBulan.length,
                        itemBuilder: (ctx, x) => Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 16,
                            ),
                            child: vText(
                              listBulan[x],
                              fontSize: 14,
                              color: Warna.primaryColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      height: 200,
                      child: ListView.builder(
                        itemCount: listYear.length,
                        itemBuilder: (ctx, x) => Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 16,
                          ),
                          child: Center(
                            child: vText(
                              listYear[x].toString(),
                              fontSize: 14,
                              color: Warna.primaryColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            VButtonDefault(
              'Pilih',
              height: 57,
              width: double.infinity,
              onTap: () {},
              isShadow: false,
            ),
          ],
        ),
      ),
    );
  }
}
