import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:login/Screens/signup.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

import '../widgets/button.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool ispassword=true;
  bool ischecked = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.fromLTRB(50, 90, 50, 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: Text(
              "HI, Welcome Back!❤",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            )),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: TextField(
                cursorColor: Colors.black,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black)),
                    filled: true,
                    enabled: true,
                    fillColor: Colors.white,
                    labelText: "Email",
                    focusColor: Colors.grey,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelStyle: TextStyle(color: Colors.black)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: TextField(
                obscureText: ispassword,
                cursorColor: Colors.black,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black)),
                    filled: true,
                    enabled: true,
                    fillColor: Colors.white,
                    labelText: "Password",
                    focusColor: Colors.grey,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    suffixIcon:IconButton(onPressed: (){
                        setState(() {
                          ispassword=!ispassword;
                        });

                      }, icon: Icon(
                        ispassword ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                        color: Colors.black,
                      ),),
                    labelStyle: TextStyle(color: Colors.black)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Row(
                  children: [
                    Checkbox(
                        value: ischecked,
                        onChanged: (value) => {
                              setState(
                                () {
                                  ischecked = !ischecked;
                                },
                              )
                            }),
                    Text("Remember me?")
                  ],
                ),
                SizedBox(width: 150),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const SignUpScreen())));
                  },
                  child: Text(
                    "Forgot Password ?",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                )
              ],
            ),
            Button("Login", onClick: () {}),  //custom widget
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Text(
                  "_____________________________OR_____________________________"),
            ),
            SizedBox(
              height: 30,
            ),
            SignInButton(Buttons.Google, onPressed: (){},padding: EdgeInsets.symmetric(horizontal: 90),shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
            
            SizedBox(height: 10,),
            
            SignInButton(Buttons.Facebook, onPressed: (){},padding: EdgeInsets.symmetric(horizontal: 90,vertical:18 ))

              //alternative:

            // MaterialButton(
            //   minWidth: size.width,
            //   shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(10)),
            //   padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
            //   color: Color.fromARGB(255, 255, 255, 255), // Background color
            //   textColor:
            //       Color.fromARGB(255, 0, 0, 0), // Text Color (Foreground color)
            //   onPressed: () {},
            //   child: Row(
            //     children: [
            //       Text("Login with google"),
            //       SizedBox(
            //         width: 200,
            //       ),
            //       Icon(
            //         Icons.g_translate,
            //         color: Colors.blue,
            //       )
            //     ],
            //   ),
            // ),
            // SizedBox(
            //   height: 30,
            // ),
            // MaterialButton(
            //   minWidth: size.width,
            //   shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(10)),
            //   padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
            //   color: Color.fromARGB(255, 0, 8, 255), // Background color
            //   textColor: Color.fromARGB(
            //       255, 255, 255, 255), // Text Color (Foreground color)
            //   onPressed: () {},
            //   child: Row(
            //     children: [
            //       Text("Login with Facebook"),
            //       SizedBox(
            //         width: 180,
            //       ),
            //       Icon(
            //         Icons.facebook,
            //         color: Colors.blue,
            //       )
            //     ],
            //   ),
            // )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Do not have an account?'),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const SignUpScreen())));
              },
              child: Text(
                "  Sign up",
                style: TextStyle(
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
