import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';
import 'screens/second_screen.dart';
import 'screens/third_screen.dart';
import 'screens/fourth_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/second': (context) => SecondScreen(),
        '/third': (context) => ThirdScreen(),
        '/fourth': (context) => FourthScreen(),
      },
    );
  }
}
