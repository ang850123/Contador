import 'package:flutter/material.dart';

//importaciones q recibimos
import 'package:flutter_application_1/src/pages/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      home: Center(
        child: HomePage(),
      ),
    );
  }
}
