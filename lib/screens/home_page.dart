import 'package:enjoy_app/screens/meditation_page.dart';
import 'package:enjoy_app/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:enjoy_app/widgets/bottom_nav_bar.dart';
import 'package:enjoy_app/widgets/picture_with_text.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home_screen';
  @override
  _State createState() => _State();
}

class _State extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // width and height of device
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            width: size.width,
            height: size.height * 0.35,
            child: PictureWithText(
              caption: 'Hello',
              picturePfad: "assets/images/forest.png",
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 5.0,
              crossAxisSpacing: 5.0,
              padding: const EdgeInsets.all(4.0),
              children: <Widget>[
                CustomCard(
                  imageSrc: "assets/images/fitness.png",
                  caption: 'Yoga exercises',
                  onTap: () {
                    Navigator.pushNamed(context, '/b');
                  },
                ),
                CustomCard(
                  imageSrc: "assets/images/meditation.jpg",
                  caption: 'Meditation',
                  onTap: () {
                    Navigator.pushNamed(context, MeditationScreen.id);
                  },
                ),
                CustomCard(
                  imageSrc: "assets/images/meditation.jpg",
                  caption: 'eyes exercises',
                  onTap: () {
                    Navigator.pushNamed(context, '/d');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }
}
