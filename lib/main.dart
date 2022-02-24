import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:dishub_e_pendapatan_flutter/router/router.dart' as router;

import 'package:dishub_e_pendapatan_flutter/page/auth/login_page.dart';
import 'package:dishub_e_pendapatan_flutter/resource/colors.dart';
import 'package:dishub_e_pendapatan_flutter/page/splashcreen/splashscreen_page.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('id_ID', null).then((_) => runApp(
      GetMaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: Splashscreen.ROUTE,
          onGenerateRoute: router.generateRoute,
          home: MyApp())));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Warna.materialPrimaryColor,
        backgroundColor: Warna.materialPrimaryColorLight,
        // accentColor: ,
        // accentColorBrightness: ,
        // buttonTheme:
      ),
      home: Splashscreen(),
    );
  }
}

