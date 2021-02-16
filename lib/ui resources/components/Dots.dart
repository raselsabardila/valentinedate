import 'package:flutter/material.dart';
import 'package:valentinedate/ui%20resources/components/Dot.dart';
import 'package:valentinedate/ui%20resources/styles/Style.dart';

class Dots extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[Dot(), SizedBox(height: 3), Dot()],
    );
  }
}
