import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tecnigo_oficial/src/pages/filtro_page.dart';
import 'package:tecnigo_oficial/src/pages/home_page.dart';
import 'package:tecnigo_oficial/src/pages/servicios_page.dart';
import 'package:tecnigo_oficial/src/pages/splash_screen_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.white));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tecnigo',
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => SplashScreen(),
        'home': (BuildContext context) => HomePage(),
        'servicios': (BuildContext context) => ServiciosPage(),
        'filtro': (BuildContext context) => FiltroPage(),
      },
    );
  }
}
