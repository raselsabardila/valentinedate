import 'package:flutter/material.dart';
import 'package:valentinedate/ui%20resources/styles/Style.dart';

class ItemSlidderAvatar extends StatelessWidget {
  bool _active;
  String _name, _imgURL;

  ItemSlidderAvatar(this._name, this._active, this._imgURL);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 55,
            height: 55,
            padding: EdgeInsets.all(1),
            decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(
                    width: 2,
                    style: BorderStyle.solid,
                    color: (this._active)
                        ? primaryPink.withOpacity(0.6)
                        : accentBlack.withOpacity(0.6)),
                shape: BoxShape.circle),
            child: Center(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(this._imgURL), fit: BoxFit.cover),
                    shape: BoxShape.circle),
              ),
            ),
          ),
          Text(
            this._name,
            style: smallTitle.copyWith(color: accentBlack, fontSize: 13),
          )
        ],
      ),
    );
  }
}
