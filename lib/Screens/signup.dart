import 'package:flutter/material.dart';
import 'package:login/widgets/button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool ispassword=true;
  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar:AppBar(
        
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: (() {
            Navigator.pop(context);
          }),
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ), 
      body:Container(
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           Center(
                  child: Text(
                "Create Your account",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
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
                      labelText: "Full Name",
                      focusColor: Colors.grey,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelStyle: TextStyle(color: Colors.black)),
                ),
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
                      suffixIcon: IconButton(onPressed: (){
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
                      labelText: "Confirm Password",
                      focusColor: Colors.grey,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      suffixIcon: IconButton(onPressed: (){
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
              Button("Sign Up", onClick: (){}),
              Container(
              margin: EdgeInsets.only(top: 40),
              child: Text(
                  "_____________________________OR_____________________________"),
            ),
            SizedBox(
              height: 30,
            ),
            MaterialButton(
              minWidth: size.width,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
              color: Color.fromARGB(255, 255, 255, 255), // Background color
              textColor:
                  Color.fromARGB(255, 0, 0, 0), // Text Color (Foreground color)
              onPressed: () {},
              child: Row(
                children: [
                  Text("Login with google"),
                  SizedBox(
                    width: 250,
                  ),
                  Icon(
                    Icons.g_translate,
                    color: Colors.blue,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            MaterialButton(
              minWidth: size.width,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
              color: Color.fromARGB(255, 0, 8, 255), // Background color
              textColor: Color.fromARGB(
                  255, 255, 255, 255), // Text Color (Foreground color)
              onPressed: () {},
              child: Row(
                children: [
                  Text("Login with Facebook"),
                  SizedBox(
                    width: 230,
                  ),
                  Icon(
                    Icons.facebook,
                    color: Colors.white,
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
    
  }
}