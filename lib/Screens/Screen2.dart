import 'package:flutter/material.dart';

import 'login.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          Container(
            width: 500,
            height: 517,
            child: Image.asset("assets/img_3.png"),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
          Container(
            width: 500,
            height: 280,
            decoration: BoxDecoration(
                color: Colors.amber,
                border: Border.all(
                  color: Colors.amber,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.zero,
                    bottomRight: Radius.zero,
                    topLeft: Radius.elliptical(500, 200))),
            child: Center(
              child: Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 75,
                    ),
                    Text(
                      "DELIVERED",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 34.0,
                        fontFamily: 'RobotoMono',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 20.0, left: 30.0, right: 30.0),
                      child: Text(
                        "Safely delivered to your door, hassle-free\n   online shopping experience, anytime,\n      anywhere! Shop with confidence!",
                        style: TextStyle(color: Colors.white70),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 40, bottom: 10, right: 0, left: 250),
                      child: Container(
                        alignment: Alignment.bottomRight,
                        height: 40,
                        width: 90,
                        color: Colors.amber,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => login()),
                            );
                          },
                          child: SizedBox(
                            height: 30,
                            child: Text(
                              "Next",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'RobotoMono'),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
