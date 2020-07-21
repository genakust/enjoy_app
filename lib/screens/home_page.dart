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
    var scaffold = Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .40,
            color: Color(0xFFffe0b2), // #ffe0b2 grey: 0xFF90a4ae
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Center(
                child: Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset("assets/images/fitness.png"),
                      Text(
                        'Yoga',
                        style: TextStyle(
                          fontSize: 18.0,
                          backgroundColor: Colors.amber,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: MyBottomNavBar(),
    );
    return scaffold;
  }
}
