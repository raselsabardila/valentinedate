import 'package:flutter/material.dart';
import 'package:valentinedate/ui%20resources/styles/Style.dart';

class BubbleChat extends StatelessWidget {
  String _text;
  bool _me;

  BubbleChat(this._me, this._text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5),
      child: Column(
        crossAxisAlignment: (this._me) ? CrossAxisAlignment.start : CrossAxisAlignment.end,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
                left: (this._me) ? 0 : 25, right: (this._me) ? 25 : 0, top: 5, bottom: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: (this._me) ? primaryPink : accentBlack.withOpacity(0.1)),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              child: Text(
                this._text,
                textAlign: (this._me) ? TextAlign.start : TextAlign.end,
                style: smallTitle.copyWith(
                    color: (this._me) ? Colors.white : accentBlack,
                    fontWeight: FontWeight.w500,
                    fontSize: 12),
              ),
            ),
          )
        ],
      ),
    );
  }
}
