import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:dishub_e_pendapatan_flutter/page/auth/login_page.dart';
import 'package:dishub_e_pendapatan_flutter/resource/colors.dart';



class Splashscreen extends StatefulWidget {
  static const ROUTE = '/splashscreen-page';

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () async {
      await Navigator.of(context).pushNamed(Login.ROUTE);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Warna.primaryColorLight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: Center(child: SvgPicture.asset('assets/svg/logo_app.svg'))),
              Padding(
                padding: const EdgeInsets.only(bottom: 30,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/png/dishub.png'),
                    Image.asset('assets/png/dishub2.png'),
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
