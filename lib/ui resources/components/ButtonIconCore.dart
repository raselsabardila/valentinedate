import 'package:flutter/material.dart';
import 'package:valentinedate/ui%20resources/styles/Style.dart';

class ButtonIconCore extends StatelessWidget {
  IconData _icon;

  ButtonIconCore(this._icon);

  @override
  Widget build(BuildContext context) {
    return Container(
                    width: 55,
                    height: 55,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: primaryPink,
                        boxShadow: [
                          BoxShadow(
                              color: primaryPink.withOpacity(0.3),
                              blurRadius: 10,
                              spreadRadius: 6)
                        ]),
                    child: Icon(this._icon, color: Colors.white, size: 22),
                  );
  }
}