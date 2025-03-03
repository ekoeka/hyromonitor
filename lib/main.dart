import 'package:flutter/material.dart';
import 'package:hyromonitor/Services/auth_services.dart';
import '../main_screens/home/home_page.dart';
import '../welcome_animations/welcome_screen.dart';
import 'package:hyromonitor/login_screens/signin/signin_page.dart';

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
            return snapshot.data == true ? SignInPage() : SignInPage();
          }
        },
      )
    );
  }
}
