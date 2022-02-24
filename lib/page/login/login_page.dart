import 'package:dishub_e_pendapatan_flutter/page/home/home.dart';
import 'package:dishub_e_pendapatan_flutter/resource/colors.dart';
import 'package:dishub_e_pendapatan_flutter/widget/v_text.dart';
import 'package:dishub_e_pendapatan_flutter/widget/v_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';//aa

class Login extends StatelessWidget {
  static const ROUTE = '/login-page';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Warna.materialPrimaryColorLight,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/svg/logo_app.svg'),
                SizedBox(
                  height: 16,
                ),
                vText(
                  'Dashboard Pendapatan Dishub kota surabaya',
                  fontSize: 16,
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  height: 55,
                ),
                Form(
                  child: Column(
                    children: [
                      VInputText('Username'),
                      VInputText('Password'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                RaisedButton(
                  onPressed: () {
                     Navigator.pushNamed(
                    context,
                    HomePage.ROUTE,
                  );
                  },
                  child: Text('Masuk'),
                ),
                SizedBox(
                  height: 13,
                ),
                Stack(
                  children: [
                    SvgPicture.asset('assets/svg/payment_applepay.svg'),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Image.asset('assets/png/dishub.png'),
                        Image.asset('assets/png/dishub2.png'),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
