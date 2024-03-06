import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen2 extends StatefulWidget {
  const LoginScreen2({super.key});

  @override
  State<LoginScreen2> createState() => _LoginScreenState();
}

TextEditingController txtemail = TextEditingController();
TextEditingController txtpass = TextEditingController();
bool password = true;

class _LoginScreenState extends State<LoginScreen2> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffd6e4ef),
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 90,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                        height: 40,
                        width: 40,
                        child: Image.asset('assets/Union.png')),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Apprigator',
                    style: TextStyle(
                        color: Color(0xff2f3d4c),
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  Center(
                    child: Container(
                      height: height / 1.15,
                      width: width / 1.1,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      height: height/4,
                        width: width / 1.23,
                        child: Image.asset('assets/image1.png')),
                  ),
                  Container(
                    height: height/2.25,
                      width: width/1.75,
                      child: Image.asset('assets/image2.png')),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 130,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 185),
                        child: Text('Welcome back,'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 185),
                        child: Text(
                          ' Robert',
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 250),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 240),
                          child: Text('Email'),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: EdgeInsets.only(left: 30,right: 30),
                          child: Container(
                            height: 70,
                            width: 400,
                            child: TextField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.email_outlined,color: Colors.grey,),
                                  hintText: 'Enter Your Email',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: BorderSide(color: Colors.grey))),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 210),
                          child: Text('Password'),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: EdgeInsets.only(right: 30, left: 30),
                          child: TextField(
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.lock),
                                suffixIcon: InkWell(
                                  onTap: () {
                                    setState(() {
                                      if (password) {
                                        password = false;
                                      } else {
                                        password = true;
                                      }
                                    });
                                  },
                                  child: (password)
                                      ? Icon(Icons.remove_red_eye)
                                      : Icon(CupertinoIcons.eye_slash_fill),
                                ),
                                hintText: 'Enter Your Password',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(color: Colors.grey))),
                            obscureText: password,
                            obscuringCharacter: "*",
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SizedBox(
                            width: 20,
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  value: check,
                                  onChanged: (value) {
                                    setState(() {
                                      if (check == false) {
                                        check = true;
                                      } else {
                                        check = false;
                                      }
                                    });
                                  },
                                  activeColor: Color(0xffd90327),
                                ),
                                Text('Remember me'),
                              ],
                            ),
                            SizedBox(
                              width: 55,
                            ),
                            Text('Forgot Password'),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              email = txtemail.text;
                              pass = txtpass.text;
                            });
                          },
                          child: Container(
                            height: 50,
                            width: 300,
                            decoration: BoxDecoration(
                              color: Color(0xffd90327),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                                child: Text(
                                  'Login',
                                  style: TextStyle(color: Colors.white, fontSize: 15),
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "I'M not robert",
                          style: TextStyle(
                              color: Color(0xff2f3d4c),
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 30),
                              child: Container(
                                height: 50,
                                width: 140,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xff2f3d4c),
                                ),
                                child: Center(
                                    child: Text(
                                      'Login us new user',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border(
                                  bottom: BorderSide(color: Colors.red),
                                  top: BorderSide(color: Colors.red),
                                  right: BorderSide(color: Colors.red),
                                  left: BorderSide(color: Colors.red),
                                ),
                              ),
                              child: Center(
                                  child: Text(
                                    'Sign up',
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold),
                                  )),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

String email = "";
String pass = "";
bool check = false;
