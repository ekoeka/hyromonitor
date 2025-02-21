import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Icon(Icons.more_horiz, size: 50, color: Colors.white),
      ),
    );
  }
}
