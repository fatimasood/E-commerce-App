import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'firstScreen.dart';
import 'login.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: 900,
        child: Stack(
          children: [
            Container(
              height: 350,
              decoration: BoxDecoration(
                color: Colors.amber,
                border: Border.all(
                  color: Colors.amber,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.zero,
                  bottomRight: Radius.zero,
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 80, bottom: 30),
                    child: Center(
                      child: Text(
                        "WELCOME",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28.5,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Text(
                    "Signup to continue",
                    style: TextStyle(fontSize: 13, color: Colors.white),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 180,
              left: 50,
              right: 50,
              child: Container(
                height: 340,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      )
                    ],
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.white,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        /* RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SecondRote()),
                      );
                    },
                    child: const Text('Sign In'),
                  ),*/
                        Padding(
                          padding: const EdgeInsets.only(top: 30, left: 0),
                          child: RichText(
                            text: TextSpan(
                              text: 'Sign In',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                              recognizer: new TapGestureRecognizer()
                                ..onTap = () => {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => login()),
                                      )
                                    },
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 25, left: 5, right: 10, bottom: 0),
                          child: Container(
                            padding: EdgeInsets.all(5.0),
                            height: 50,
                            width: 360,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(top: 6),
                                border: InputBorder.none,
                                hintText: 'Email',
                                prefixIcon: Icon(
                                  Icons.email,
                                  size: 20,
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 0, left: 5, right: 10, bottom: 0),
                          child: Container(
                            padding: EdgeInsets.all(5.0),
                            height: 50,
                            width: 360,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(top: 6),
                                border: InputBorder.none,
                                hintText: 'Password',
                                prefixIcon: Icon(
                                  Icons.lock,
                                  size: 20,
                                  color: Colors.black54,
                                ),
                                suffixIcon: Icon(
                                  Icons.visibility_off,
                                  size: 20,
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                          ),
                        ),
                        /*Padding(
                          padding: const EdgeInsets.only(top: 80),
                          child: Container(
                            padding: EdgeInsets.all(15.0),
                            height: 50,
                            width: 200,
                            decoration: BoxDecoration(
                              /*boxShadow: [
                                BoxShadow(
                                    blurRadius: 4,
                                    color: Colors.grey,
                                    offset: Offset(1, 3))
                              ],*/
                              color: Colors.amber,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                            ),
                            child: Center(
                              child: RichText(
                                text: TextSpan(
                                  text: 'Sign Up',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                  recognizer: new TapGestureRecognizer()
                                    ..onTap = () => {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    firstScreen()),
                                          )
                                        },
                                ),
                              ),
                            ),
                          ),
                        ),*/
                        Padding(
                          padding:
                              EdgeInsets.only(top: 70, left: 30, right: 30),
                          child: SizedBox(
                            height: 45,
                            width: 160,
                            child: ElevatedButton(
                              child: const Text(
                                "Sign Up",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => firstScreen(),
                                    ));
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 540),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Already have an account ?",
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          RichText(
                            text: TextSpan(
                              text: 'Sign In',
                              style: TextStyle(
                                color: Colors.amber,
                                fontWeight: FontWeight.w800,
                                fontSize: 13,
                              ),
                              recognizer: new TapGestureRecognizer()
                                ..onTap = () => {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => login()),
                                      )
                                    },
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                        height: 85,
                      ),
                      const Text(
                        '────────── Or Continue with ────────',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 50,
                        height: 35,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(15.0),
                            height: 50,
                            width: 130,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 4,
                                    color: Colors.black45,
                                    offset: Offset(1, 3))
                              ],
                              color: Colors.amber,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/img_4.png'),
                                const SizedBox(
                                  width: 2,
                                ),
                                Text(
                                  'Facebook',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          Container(
                            padding: EdgeInsets.all(15.0),
                            height: 50,
                            width: 130,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 4,
                                    color: Colors.black45,
                                    offset: Offset(1, 3))
                              ],
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                            ),
                            child: Row(
                              children: [
                                Image.asset('assets/img_5.png'),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text(
                                  'Google',
                                  style: TextStyle(
                                      color: Colors.amber,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
