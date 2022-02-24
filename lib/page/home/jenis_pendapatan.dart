import 'package:flutter/material.dart';

import 'package:dishub_e_pendapatan_flutter/resource/colors.dart';
import 'package:dishub_e_pendapatan_flutter/widget/v_text.dart';
import 'package:dishub_e_pendapatan_flutter/widget/v_widgets.dart';
import 'package:dishub_e_pendapatan_flutter/page/bandingkan/bandingkan_page.dart';
import 'package:dishub_e_pendapatan_flutter/page/pendapatan/pendapatan.dart';
import 'package:dishub_e_pendapatan_flutter/resource/strings.dart';

class JenisPendapatanPage extends StatelessWidget {
  List<String> jnsPendapatan = StringResources.jenisPendapatan;
  List<String> icPendapatan = StringResources.iconPendapatan;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              vText(
                'Jenis Pendapatan',
                color: Warna.primaryColor,
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(BandingkanPage.ROUTE);
                },
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Bandingkan',
                        style: TextStyle(
                          color: Warna.mediumPurple,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      WidgetSpan(
                        child: Icon(
                          Icons.arrow_forward_sharp,
                          color: Warna.mediumPurple,
                          size: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          ListView.builder(
            itemCount: jnsPendapatan.length,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (ctx, i) => ListJenisPendapatan(
              title: jnsPendapatan[i],
              leading: icPendapatan[i],
              onTap: () {
                Navigator.of(context).pushNamed(
                  PendapatanPage.ROUTE,
                  arguments: ArgsDetail(
                    i,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ListJenisPendapatan extends StatelessWidget {
  String leading;
  String title;
  final onTap;

  ListJenisPendapatan({
    required this.leading,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: VCard(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: Image.asset(leading),
              title: vText(title),
              subtitle: vText('Rp 9.539.576.500'),
              trailing: Icon(
                Icons.flag,
                color: Warna.orange,
              ),
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
                        "Kurang",
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
          ],
        ),
      ),
    );
  }
}
