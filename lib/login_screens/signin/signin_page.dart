import 'package:flutter/material.dart';
import 'package:hyromonitor/Services/auth_services.dart';
import 'package:hyromonitor/all_used/all_style_text.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Background Color
          Container(
            color: Color(0xFF01D150),
          ),
          //lingkaran dipojok kiri atas
          Positioned(
            top: -80,
            left: -80,
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF058135),
              ),
            ),
          ),
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
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.white, // Warna border putih
                          ),
                        ),
                      ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '   PASSWORD',
                    style: SignFontManager.textbox
                  ),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
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
                          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
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