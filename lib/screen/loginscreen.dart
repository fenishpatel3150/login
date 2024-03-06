import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

TextEditingController txtemail = TextEditingController();
TextEditingController txtpass = TextEditingController();
bool password = true;

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffd6e4ef),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(),
                  child: Center(
                    child: Container(
                        height: 40,
                        width: 40,
                        child: Image.asset('assets/Union.png')),
                  ),
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
                    height: height / 1.05,
                    width: width / 3.44,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                      width: width / 3.5,
                      child: Image.asset('assets/image1.png')),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 430),
                  child: Container(
                      width: width / 3.5,
                      child: Image.asset('assets/image2.png')),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 80,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 240),
                      child: Text('Welcome back,'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 240),
                      child: Text(
                        ' Robert',
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 300),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 290),
                        child: Text('Email'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 600, left: 600),
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email_outlined),
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
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 260),
                        child: Text('Password'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 600, left: 600),
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
                            width: 600,
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
                            width: 100,
                          ),
                          Text('Forgot Password'),
                        ],
                      ),
                      SizedBox(
                        height: 20,
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
                          width: 350,
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
                        height: 20,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 590),
                            child: Container(
                              height: 50,
                              width: 170,
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
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 50,
                            width: 160,
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
    );
  }
}

String email = "";
String pass = "";
bool check = false;
