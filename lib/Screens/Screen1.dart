import 'package:flutter/material.dart';

import 'Screen2.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: 500,
            height: 300,
            decoration: BoxDecoration(
                color: Colors.amber,
                border: Border.all(
                  color: Colors.amber,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.zero,
                    bottomLeft: Radius.elliptical(500, 200))),
            child: Center(
              child: Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      "TRACK YOUR\n      ORDER",
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
                        "  Shop with peace of mind! Protecting your\n       addresses, your privacy is our priority.\n                  Shop safely and securely!",
                        style: TextStyle(color: Colors.white70),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: 500,
            height: 420,
            child: Image.asset("assets/img_2.png"),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 20, right: 0, left: 250),
            child: Container(
              alignment: Alignment.bottomRight,
              height: 40,
              width: 90,
              color: Colors.white,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Screen2()),
                  );
                },
                child: Text(
                  "Next",
                  style: TextStyle(
                      color: Colors.amber,
                      fontSize: 16,
                      fontFamily: 'RobotoMono'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
