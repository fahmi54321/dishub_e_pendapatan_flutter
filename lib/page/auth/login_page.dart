import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:dishub_e_pendapatan_flutter/page/home/home.dart';
import 'package:dishub_e_pendapatan_flutter/resource/colors.dart';
import 'package:dishub_e_pendapatan_flutter/widget/v_text.dart';
import 'package:dishub_e_pendapatan_flutter/widget/v_widgets.dart';

class Login extends StatelessWidget {
  static const ROUTE = '/login-page';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Warna.primaryColorLight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 50
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset('assets/svg/logo_app.svg'),
                    SizedBox(
                      height: 16,
                    ),
                    vText(
                      'Dashboard Pendapatan Dishub kota surabaya',
                      fontSize: 16,
                      color: Warna.materialPrimaryColor,
                      fontWeight: FontWeight.bold,
                      maxLines: 2,
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Form(
                      child: Column(
                        children: [
                          VInputText(
                            'Username',
                            height: 54,
                            prefixIcon: Icon(Icons.person),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          VInputText(
                            'Password',
                            height: 54,
                            prefixIcon: Icon(
                              Icons.lock,
                            ),
                            suffixIcon: Icon(Icons.remove_red_eye),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    VButtonDefault(
                      'Masuk',
                      onTap: () {
                        Navigator.of(context).pushNamed(HomePage.ROUTE);

                      },
                      height: 47,
                      isShadow: false,
                      width: double.infinity,
                    ),
                  ],
                ),
              ),

              Expanded(
                child: Stack(
                  children: [
                    SvgPicture.asset(
                      'assets/svg/payment_applepay.svg',
                    ),
                    Positioned(
                      top: 100,
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Image.asset('assets/png/dishub.png'),
                          Image.asset('assets/png/dishub2.png'),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
