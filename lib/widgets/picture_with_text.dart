import 'package:flutter/material.dart';

class PictureWithText extends StatelessWidget {
  final String picturePfad;
  final String caption;

  PictureWithText({this.picturePfad, this.caption});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          child: Expanded(
            child: Image.asset(
              picturePfad,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(15.0),
          alignment: Alignment.bottomLeft,
          child: Row(
            children: <Widget>[
              Text(
                caption,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
