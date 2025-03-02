import 'package:flutter/material.dart';
import 'package:hyromonitor/Services/auth_services.dart';
import 'package:hyromonitor/all_used/all_background_part/all_background_parts.dart';
import 'package:hyromonitor/all_used/all_input_decoration.dart';
import 'package:hyromonitor/all_used/all_style_text.dart';

class SignUpSecondPage extends StatelessWidget {
  const SignUpSecondPage({super.key});

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
                    '   PHONE NUMBER',
                    style: SignFontManager.textbox
                  ),
                  TextField(
                      decoration: labelInputDecoration(),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '   PASSWORD',
                    style: SignFontManager.textbox
                  ),
                  TextField(
                    decoration: labelInputDecoration(),
                  ),
                  SizedBox(height: 10),
                  Text(
                      '   CONFIRM PASSWORD',
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
                          //go to Sign In
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
                          Navigator.pop(context);
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
                          'BACK',
                          style:  SignFontManager.button
                        ),
                      ),
                      SizedBox(width: 40),
                      ElevatedButton(
                        onPressed: (){
                          //handle sign-in here
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
                            'SIGN UP',
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