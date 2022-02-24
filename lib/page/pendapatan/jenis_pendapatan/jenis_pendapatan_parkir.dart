import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:dishub_e_pendapatan_flutter/resource/colors.dart';
import 'package:dishub_e_pendapatan_flutter/widget/v_text.dart';
import 'package:dishub_e_pendapatan_flutter/widget/v_widgets.dart';

class JenisPendapatanParkir extends StatelessWidget {
  List<String> jnsPendatan = [
    'Penyediaan Tempat Parkir',
    'Penyediaan Fasilitas Lainnya',
    'Denda Retribusi Terminal',
  ];

  List<String> totalPendatan = [
    'Rp 1.725.000.000',
    'Rp 412.928.423',
    'Rp 0',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        ListView.builder(
          itemCount: jnsPendatan.length,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (ctx, i) => ListJenisPendapatanDetails(
            title: jnsPendatan[i],
            total: totalPendatan[i],
            jnsPendatan: jnsPendatan.length,
            index: i,
          ),
        ),
      ],
    );
  }
}

class ListJenisPendapatanDetails extends StatefulWidget {
  String total;
  String title;
  int jnsPendatan;
  int index;

  ListJenisPendapatanDetails({
    required this.total,
    required this.title,
    required this.jnsPendatan,
    required this.index,
  });

  @override
  State<ListJenisPendapatanDetails> createState() =>
      _ListJenisPendapatanDetailsState();
}

class _ListJenisPendapatanDetailsState
    extends State<ListJenisPendapatanDetails> {
  final List<bool> _selected = List.generate(3, (index) => false);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _selected[widget.index] = !_selected[widget.index];
        });
      },
      child: VCard(
        bgColor:
            _selected[widget.index] == true ? Warna.lightGrey2 : Warna.white,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      vText(
                        widget.title,
                        fontSize: 14,
                        color: Warna.primaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                      vText(
                        widget.total,
                        fontSize: 18,
                        color: Warna.primaryColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.flag,
                      color: Warna.orange,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      _selected[widget.index] == false
                          ? Icons.arrow_forward_ios_outlined
                          : Icons.keyboard_arrow_down,
                      color: Warna.darkGrey,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
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
                      FittedBox(
                        child: vText(
                          "Rp 16.307.886.412",
                          fontSize: 14,
                          color: Warna.primaryColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      vText(
                        "Lebih",
                        fontSize: 12,
                        color: Warna.darkGrey,
                        fontWeight: FontWeight.w500,
                      ),
                      FittedBox(
                        child: vText(
                          "Rp 3.729.152.014",
                          fontSize: 14,
                          color: Warna.primaryColor,
                          fontWeight: FontWeight.w700,
                        ),
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
            SizedBox(
              height: 20,
            ),
            if (_selected[widget.index] == true)
              RincianParkir(),
          ],
        ),
        borderColor: Warna.lightGrey2,
      ),
    );
  }
}

class RincianParkir extends StatelessWidget {
  const RincianParkir({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        vText(
          'Jumlah yang harus dipenuhi setiap bulan adalah',
          color: Warna.darkGrey,
          fontWeight: FontWeight.w600,
          fontSize: 12,
        ),
        vText(
          'Rp 26.301.100',
          color: Warna.primaryColor,
          fontWeight: FontWeight.w700,
          fontSize: 14,
        ),
        SizedBox(
          height: 20,
        ),
        VListTileRincianPendapatan(),
        VListTileRincianPendapatan(),
      ],
    );
  }
}
