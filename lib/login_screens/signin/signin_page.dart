import 'package:flutter/material.dart';
import 'package:hyromonitor/Services/auth_services.dart';
import 'package:hyromonitor/all_used/all_background_part/all_background_parts.dart';
import 'package:hyromonitor/all_used/all_input_decoration.dart';
import 'package:hyromonitor/all_used/all_style_text.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

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
                        'SIGN IN',
                        style: SignFontManager.judul
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    '   USERNAME',
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
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: (){
                            //forgot page
                          },
                          child: Text(
                            'FORGOT YOUR PASSWORD?',
                            style: SignFontManager.anotherbutton,
                          ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        '|',
                        style: TextStyle(
                          fontSize: 20,
                            color: Colors.white
                        ),
                      ),
                      SizedBox(width: 5),
                      TextButton(
                        onPressed: (){
                          //forgot page
                        },
                        child: Text(
                          "DONT HAVE AN ACCOUNT?",
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
                          //handle sign-in here
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Color(0xFF01D150),
                          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide(
                              color: Colors.white,
                              width: 1.0,
                            )
                          ),
                        ),
                        child: Text(
                          'SIGN IN',
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