import 'package:enjoy_app/widgets/picture_with_text.dart';
import 'package:flutter/material.dart';
import 'package:enjoy_app/widgets/bottom_nav_bar.dart';
import 'package:enjoy_app/widgets/circle.dart';

class EyeExersises extends StatefulWidget {
  static const String id = 'eye_exersises';
  @override
  _EyeExersisesState createState() => _EyeExersisesState();
}

class _EyeExersisesState extends State<EyeExersises> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: <Widget>[
          PictureWithText(
            caption: 'meditate',
            picturePfad: "assets/images/treewithstones.jpg",
            size: size,
          ),
          circle,
        ],
      ),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }
}
