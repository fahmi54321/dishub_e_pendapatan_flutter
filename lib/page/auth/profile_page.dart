import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:dishub_e_pendapatan_flutter/page/auth/ubah_password_page.dart';
import 'package:dishub_e_pendapatan_flutter/resource/colors.dart';
import 'package:dishub_e_pendapatan_flutter/widget/v_text.dart';
import 'package:dishub_e_pendapatan_flutter/widget/v_widgets.dart';
import 'package:dishub_e_pendapatan_flutter/page/bandingkan/bandingkan_page.dart';


class ProfilePage extends StatelessWidget {

  static const ROUTE = '/profile-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(
            56,
          ),
          child: VAppBar('',Warna.materialPrimaryColorLight)),
      body: Container(
        color: Warna.materialPrimaryColorLight,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            children: [
              vText(
                'Halo',
                color: Warna.darkGrey,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(
                height: 8,
              ),
              vText(
                'Administrator',
                color: Warna.purple,
                fontSize: 36,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                child: vText(
                  'Settings',
                  align: TextAlign.start,
                  color: Warna.purple,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              VListTileWhite(
                leading: VItemOval(),
                title: 'Ubah Password',
                trailing: Icon(
                  Icons.arrow_forward_ios,
                ),
                onTap: () {
                  showModalBottomSheet<dynamic>(
                    context: context,
                    backgroundColor: Colors.transparent,
                    builder: (ctx) => Container(height: MediaQuery.of(context).size.height * 0.75,child: UbahPasswordPage()),
                  );
                },
              ),
              SizedBox(
                height: 20,
              ),
              VListTileWhite(
                leading: VItemOval(),
                title: 'Versi Aplikasi',
                trailing: vText(
                  '2.0.0',
                  color: Warna.purple,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
                onTap: () {},
              ),
              SizedBox(
                height: 50,
              ),
              VButtonDefault(
                'Keluar',
                height: 47,
                width: double.infinity,
                onTap: () {
                  Navigator.of(context).pushNamed(BandingkanPage.ROUTE);
                },
                isShadow: false,
                colorButton: Warna.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}






