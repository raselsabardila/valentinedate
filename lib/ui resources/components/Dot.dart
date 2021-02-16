import 'package:flutter/material.dart';
import 'package:valentinedate/ui%20resources/styles/Style.dart';

class Dot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 5,
        height: 5,
        decoration: BoxDecoration(
            color: accentBlack, borderRadius: BorderRadius.circular(20)));
  }
}
