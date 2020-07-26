import 'package:enjoy_app/constants.dart';
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
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .40,
            color: Color(0xFFffe0b2),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    color: Colors.amber,
                    width: 50,
                    height: 50,
                  ),
                  Text(
                    "Hello Maik",
                    style: kCardCaption,
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }
}
