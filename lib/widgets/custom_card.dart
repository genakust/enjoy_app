import 'package:flutter/material.dart';

import '../constants.dart';

class CustomCard extends StatelessWidget {
  final String imageSrc;
  final String caption;
  final Function onTap;
  const CustomCard({this.imageSrc, this.caption, this.onTap});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: InkWell(
        child: Container(
          decoration: BoxDecoration(color: Colors.white12),
          // height: 100,
          // width: 160,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset(
                imageSrc,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                caption,
                style: kCardCaption,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}
