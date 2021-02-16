import 'package:flutter/material.dart';
import 'package:valentinedate/ui%20resources/styles/Style.dart';

class IndicatorSplashScreen extends StatelessWidget {
  bool _active;

  IndicatorSplashScreen(this._active);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (this._active) ? 20 : 8,
      height: 8,
      decoration: BoxDecoration(
          color: (this._active) ? accentBlue : accentBlue.withOpacity(0.2),
          borderRadius: BorderRadius.circular(20)),
    );
  }
}
