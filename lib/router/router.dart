import 'package:dishub_e_pendapatan_flutter/page/auth/profile_page.dart';
import 'package:dishub_e_pendapatan_flutter/page/pendapatan/pendapatan.dart';
import 'package:dishub_e_pendapatan_flutter/page/home/home.dart';
import 'package:flutter/material.dart';

import 'package:dishub_e_pendapatan_flutter/page/splashcreen/splashscreen_page.dart';
import 'package:dishub_e_pendapatan_flutter/page/auth/login_page.dart';
import 'package:dishub_e_pendapatan_flutter/page/bandingkan/bandingkan_page.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case Splashscreen.ROUTE:
      return MaterialPageRoute(builder: (context) => Splashscreen());

    case Login.ROUTE:
      return MaterialPageRoute(builder: (context) => Login());

    case PendapatanPage.ROUTE:
      return MaterialPageRoute(
        fullscreenDialog: true,
        builder: (context) => PendapatanPage(
          args: settings.arguments as ArgsDetail,
        ),
      );

    case HomePage.ROUTE:
      return MaterialPageRoute(builder: (context) => HomePage());

    case ProfilePage.ROUTE:
      return MaterialPageRoute(builder: (context) => ProfilePage());

    case BandingkanPage.ROUTE:
      return MaterialPageRoute(builder: (context) => BandingkanPage());

    default:
      return MaterialPageRoute(builder: (context) => Splashscreen());
  }
}
