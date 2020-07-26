import 'package:flutter/material.dart';

import '../constants.dart';

class CustomCard extends StatelessWidget {
  final String imageSrc;
  final String caption;
  final Function onTap;
  const CustomCard({this.imageSrc, this.caption, this.onTap});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.0,
      height: 250.0,
      child: InkWell(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Image.asset(
              imageSrc,
              // fit: BoxFit.contain,
            ),
            Container(
              padding: EdgeInsets.all(1.0),
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Colors.black.withAlpha(0),
                    Colors.black12,
                    Colors.black45
                  ],
                ),
              ),
              child: Text(
                caption,
                style: kCardCaption,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        onTap: onTap,
      ),
    );
  }
}
