import 'package:flutter/material.dart';
import 'package:hyromonitor/Services/auth_services.dart';
import 'package:hyromonitor/all_used/all_background_part/all_background_parts.dart';
import 'package:hyromonitor/all_used/all_input_decoration.dart';
import 'package:hyromonitor/all_used/all_style_text.dart';
import 'package:hyromonitor/login_screens/signin/signin_page.dart';
import 'package:hyromonitor/login_screens/signup/signup_second_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const SignBackground(),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'SIGN UP',
                        style: SignFontManager.judul
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    '   NAME',
                    style: SignFontManager.textbox
                  ),
                  TextField(
                      decoration: labelInputDecoration(),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '   USERNAME',
                    style: SignFontManager.textbox
                  ),
                  TextField(
                    decoration: labelInputDecoration(),
                  ),
                  SizedBox(height: 10),
                  Text(
                      '   EMAIL',
                      style: SignFontManager.textbox
                  ),
                  TextField(
                    decoration: labelInputDecoration(),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: (){
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (context) => SignInPage()),
                                (Route<dynamic> route) => route.isFirst,
                          );
                        },
                        child: Text(
                          "ALREADY HAVE AN ACCOUNT?",
                          style: SignFontManager.anotherbutton,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation, secondaryAnimation) => SignUpSecondPage(),
                              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                var begin = Offset(-1.0, 0.0);
                                var end = Offset.zero;
                                var curve = Curves.ease;

                                var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                                var offsetAnimation = animation.drive(tween);

                                return SlideTransition(
                                  position: offsetAnimation,
                                  child: child,
                                );
                              },
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Color(0xFF058135),
                          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: Text(
                          'NEXT',
                          style:  SignFontManager.button
                        ),
                      )
                    ],
                  )
                ],
              ),

            ),
          )
        ],
      ),
    );
  }
}