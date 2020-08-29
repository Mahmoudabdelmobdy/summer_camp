import 'package:flutter/material.dart';
import 'package:summer_camp/screens/screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Summer Camp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Montserrat',
        scaffoldBackgroundColor: Colors.white,
        buttonColor: Color(0xff8DB1FB),
      ),
      home: HomeScreen(),
    );
  }
}