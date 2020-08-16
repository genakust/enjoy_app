import 'package:flutter/material.dart';

class PictureWithText extends StatelessWidget {
  final String picturePfad;
  final String caption;
  final Size size;
  PictureWithText({this.picturePfad, this.caption, this.size});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Expanded(
          child: Image.asset(
            picturePfad,
            width: size.width,
            height: size.height * 0.30,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          padding: EdgeInsets.all(15.0),
          alignment: Alignment.bottomLeft,
          child: Text(
            caption,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24.0),
          ),
        ),
      ],
    );
  }
}
