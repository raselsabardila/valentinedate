import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:valentinedate/ui%20resources/views/SplashScreen.dart';

void main() {
  runApp(MyApp());

  SystemChrome.setEnabledSystemUIOverlays([]);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
