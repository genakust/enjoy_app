import 'package:flutter/material.dart';
import 'package:enjoy_app/widgets/bottom_nav_bar.dart';
import 'package:enjoy_app/widgets/picture_with_text.dart';

class MeditationScreen extends StatefulWidget {
  static const String id = 'meditation_screen';
  @override
  _MeditationScreenState createState() => _MeditationScreenState();
}

class _MeditationScreenState extends State<MeditationScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: <Widget>[
          PictureWithText(
            caption: 'meditate',
            picturePfad: "assets/images/treewithstones.jpg",
          ),
        ],
      ),
      bottomNavigationBar: MyBottomNavBar(),
      floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.add),
          backgroundColor: Colors.green),
    );
  }
}
