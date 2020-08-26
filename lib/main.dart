import 'package:enjoy_app/screens/eye_exercises.dart';
import 'package:enjoy_app/screens/meditation_page.dart';
import 'package:flutter/material.dart';
import 'package:enjoy_app/screens/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Enjoy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: HomePage.id,
      routes: <String, WidgetBuilder>{
        HomePage.id: (BuildContext context) => HomePage(),
        // '/b': (BuildContext context) => YogaScreen(),
        MeditationScreen.id: (BuildContext context) => MeditationScreen(),
        EyeExersises.id: (BuildContext context) => EyeExersises(),
      },
    );
  }
}
