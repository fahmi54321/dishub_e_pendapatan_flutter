import 'package:flutter/material.dart';

import 'package:dishub_e_pendapatan_flutter/resource/colors.dart';
import 'package:dishub_e_pendapatan_flutter/widget/v_text.dart';
import 'package:dishub_e_pendapatan_flutter/widget/v_widgets.dart';

class UbahPasswordPage extends StatelessWidget {
  const UbahPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VPopUp(
      context: context,
      widget: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            vText(
              'Ubah Sandi',
              fontSize: 18,
              color: Warna.purple,
              fontWeight: FontWeight.w700,
            ),
            SizedBox(
              height: 30,
            ),
            Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  vText(
                    'Password lama',
                    fontSize: 12,
                    color: Warna.purple,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(height: 6),
                  VInputText(
                    'Password',
                    outlineColor: Warna.lightGrey,
                    prefixIcon: Icon(
                      Icons.lock,
                    ),
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                    ),
                    activeColor: Warna.lightGrey,
                  ),
                  SizedBox(height: 30),
                  vText('Password baru'),
                  SizedBox(height: 6),
                  VInputText(
                    'Password',
                    outlineColor: Warna.lightGrey,
                    prefixIcon: Icon(
                      Icons.lock,
                    ),
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                    ),
                    activeColor: Warna.lightGrey,
                  ),
                  SizedBox(height: 30),
                  vText('Konfirmasi password baru'),
                  SizedBox(height: 6),
                  VInputText(
                    'Password',
                    outlineColor: Warna.lightGrey,
                    prefixIcon: Icon(
                      Icons.lock,
                    ),
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                    ),
                    activeColor: Warna.lightGrey,
                  ),
                ],
              ),
            ),
            SizedBox(height: 45),
            Row(
              children: [
                Expanded(
                  child: VButtonDefault(
                    'Batal',
                    height: 47,
                    width: double.infinity,
                    onTap: () {},
                    isShadow: false,
                    colorButton: Warna.primaryColorLight,
                    colorText: Warna.darkGrey,
                  ),
                ),
                SizedBox(width: 20,),
                Expanded(
                  child: VButtonDefault(
                    'Simpan',
                    height: 47,
                    width: double.infinity,
                    onTap: () {},
                    isShadow: false,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
