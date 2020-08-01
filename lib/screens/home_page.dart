import 'package:enjoy_app/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:enjoy_app/widgets/bottom_nav_bar.dart';

class HomePage extends StatefulWidget {
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
            height: size.height * .35,
            width: size.width,
            child: Stack(
              children: <Widget>[
                Container(
                  child: Expanded(
                    child: Image.asset(
                      "assets/images/forest.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15.0),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Hello Mike',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 0.0,
              crossAxisSpacing: 10.0,
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
                    Navigator.pushNamed(context, '/c');
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
