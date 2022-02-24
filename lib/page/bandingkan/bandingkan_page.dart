import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:dishub_e_pendapatan_flutter/resource/colors.dart';
import 'package:dishub_e_pendapatan_flutter/page/bandingkan/pilih_bulan_tahun_page.dart';
import 'package:dishub_e_pendapatan_flutter/page/bandingkan/pilih_jenis_pendapatan.dart';
import 'package:dishub_e_pendapatan_flutter/widget/v_text.dart';
import 'package:dishub_e_pendapatan_flutter/widget/v_widgets.dart';

class BandingkanPage extends StatefulWidget {
  static const ROUTE = '/bandingkan-page';

  @override
  State<BandingkanPage> createState() => _BandingkanPageState();
}

class _BandingkanPageState extends State<BandingkanPage> {
  String status = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: VAppBar(
          'Perbandingan Pendapatan',
          Warna.white,
        ),
      ),
      body: Container(
        color: Warna.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 35,
                horizontal: 20,
              ),
              child: Row(
                children: [
                  Expanded(
                      child: VButtonDefaultIcon(
                    'New',
                    height: 47,
                    width: double.infinity,
                    onTap: () {

                      setState(() {
                        status = 'ada';
                      });

                      showModalBottomSheet<dynamic>(
                        context: context,
                        backgroundColor: Colors.transparent,
                        builder: (ctx) => Container(height: MediaQuery.of(context).size.height * 0.75,child: PilihBulanTahunPage()),
                      );
                    },
                    isShadow: false,
                    icon: Icon(Icons.keyboard_arrow_down_outlined),
                    colorText: Warna.primaryColor,
                    colorButton: Warna.lightGrey2,
                  )),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: VButtonDefaultIcon(
                    'Old',
                    height: 47,
                    width: double.infinity,
                    onTap: () {

                      setState(() {
                        status = 'ada';
                      });

                      showModalBottomSheet<dynamic>(
                        context: context,
                        backgroundColor: Colors.transparent,
                        builder: (ctx) => Container(height: MediaQuery.of(context).size.height * 0.75,child: PilihBulanTahunPage()),
                      );
                    },
                    isShadow: false,
                    icon: Icon(Icons.keyboard_arrow_down_outlined),
                    colorText: Warna.primaryColor,
                    colorButton: Warna.lightGrey2,
                  )),
                ],
              ),
            ),
            SizedBox(
              width: 30,
            ),
            Expanded(
              child: status.isEmpty ? BandingkanKosong() : BandingkanScreen(),
            ),
          ],
        ),
      ),
    );
  }
}

class BandingkanScreen extends StatelessWidget {
  bool _isHide = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          BandingkanItem(_isHide),
          BandingkanItem(_isHide),
          BandingkanItem(_isHide),
        ],
      ),
    );
  }
}

class BandingkanItem extends StatefulWidget {
  bool _isHide;

  BandingkanItem(this._isHide);

  @override
  State<BandingkanItem> createState() => _BandingkanItemState();
}

class _BandingkanItemState extends State<BandingkanItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Warna.white,
        border: Border.all(
          width: 1,
          color: Warna.lightGrey2,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            20,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 20,
        ),
        child: Column(
          children: [
            ListTile(
              title: vText(
                'Parkir',
                fontSize: 18,
                color: Warna.primaryColor,
                fontWeight: FontWeight.w700,
              ),
              leading: Image.asset('assets/png/parkir.png'),
              trailing: widget._isHide == false
                  ? Icon(
                      Icons.arrow_forward_ios,
                    )
                  : Icon(
                      Icons.keyboard_arrow_down_outlined,
                    ),
              onTap: () {
                setState(() {
                  widget._isHide = !widget._isHide;
                });
              },
            ),
            if (widget._isHide == true)
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 4,
                itemBuilder: (ctx, i) => BandinganSubItem(),
              ),
          ],
        ),
      ),
    );
  }
}

class BandinganSubItem extends StatelessWidget {
  const BandinganSubItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 16,
        ),
        vText(
          'Total Pendapatan',
          fontSize: 12,
          color: Warna.primaryColor,
          fontWeight: FontWeight.w600,
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    10,
                  ),
                ),
                child: Container(
                    color: Warna.lightPurple,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: vText(
                        'Rp 645.000.000',
                        fontSize: 12,
                        color: Warna.primaryColor,
                        fontWeight: FontWeight.w500,
                      ),
                    )),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    10,
                  ),
                ),
                child: Container(
                    color: Warna.blue,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: vText(
                        'Rp 645.000.000',
                        fontSize: 12,
                        color: Warna.primaryColor,
                        fontWeight: FontWeight.w500,
                      ),
                    )),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class BandingkanKosong extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          'assets/svg/Nothing-found-here.svg',
        ),
        vText(
          'Belum ada jenis pendapatan yang dipilih',
          fontSize: 14,
          color: Warna.primaryColor,
          fontWeight: FontWeight.w500,
        ),
        SizedBox(
          height: 46,
        ),
        InkWell(
          onTap: () {
            showModalBottomSheet<dynamic>(
              context: context,
              backgroundColor: Colors.transparent,
              builder: (ctx) => Container(height: MediaQuery.of(context).size.height * 0.75,child: PilihJenisPendapatan()),
            );

          },
          child: Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: vText(
                'Pilih jenis pendapatan',
                fontSize: 16,
                color: Warna.darkGrey,
                fontWeight: FontWeight.w500,
                align: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
