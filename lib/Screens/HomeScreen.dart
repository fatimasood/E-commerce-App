import 'package:flutter/material.dart';

import 'Screen1.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: 500,
            height: 502,
            child: Image.asset("assets/img_1.png"),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
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
                    bottomLeft: Radius.zero,
                    bottomRight: Radius.zero,
                    topLeft: Radius.elliptical(500, 200))),
            child: Center(
              child: Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 70,
                    ),
                    Text(
                      "PURCHASE\n    ONLINE",
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
                        "Welcome! Get ready for a delightful online\n           shopping experience. Browse,\n                          shop, and enjoy!",
                        style: TextStyle(color: Colors.white70),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 10, bottom: 10, right: 0, left: 250),
                      child: Container(
                        alignment: Alignment.bottomRight,
                        height: 40,
                        width: 90,
                        color: Colors.amber,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Screen1()),
                            );
                          },
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
