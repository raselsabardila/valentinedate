import 'package:flutter/material.dart';
import 'package:valentinedate/ui%20resources/styles/Style.dart';

class BoxIcon extends StatelessWidget {
  Widget _widget;

  BoxIcon(this._widget);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35,
      height: 35,
      decoration: BoxDecoration(
          color: accentBlack.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10)),
      child: this._widget,
    );
  }
}
