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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        '/a': (BuildContext context) => HomePage(),
        // '/b': (BuildContext context) => YogaScreen(),
        // '/c': (BuildContext context) => MeditationScreen(),
        // '/d': (BuildContext context) => EyesExercisesScreen(),
      },
    );
  }
}
