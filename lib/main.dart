import 'package:flutter/material.dart';
import 'package:hyromonitor/Services/auth_services.dart';
import '../screens/Home/home_page.dart';
import '../screens/home/welcome_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FutureBuilder<bool>(
        future: AuthService.getLoginStatus(),
        builder: (context, snapshot){
          if (snapshot.connectionState == ConnectionState.waiting){
            return CircularProgressIndicator();
          } else {
            return snapshot.data == true ? HomeScreen() : WelcomeScreen();
          }
        },
      )
    );
  }
}
