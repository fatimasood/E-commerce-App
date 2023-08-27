import 'package:flutter/material.dart';
import 'ChineseMenu.dart';
import 'FoodMenu.dart';
import 'ItalianMenu.dart';
import 'burgersitem.dart';
import 'firstScreen.dart';

class HomeScreenD extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 550,
            height: 180,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Image.asset("assets/img_9.png"),
          ),
          Expanded(
            // Use Expanded widget to allow ListView to take remaining space
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 12, left: 5, right: 5),
                  child: Container(
                    width: 500,
                    height: 37,
                    color: Colors.white,
                    child: Expanded(
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          ElevatedButton(
                            child: const Text(
                              "   ALL  ",
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
                          SizedBox(
                            height: 20,
                            width: 10,
                          ),
                          ElevatedButton(
                            child: const Text(
                              "Burgers",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => burgersitem(),
                                  ));
                            },
                          ),
                          SizedBox(
                            height: 20,
                            width: 10,
                          ),
                          ElevatedButton(
                            child: const Text(
                              "Pizza",
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
                          SizedBox(
                            height: 20,
                            width: 10,
                          ),
                          ElevatedButton(
                            child: const Text(
                              "Chinese",
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
                          SizedBox(
                            height: 20,
                            width: 10,
                          ),
                          ElevatedButton(
                            child: const Text(
                              "Italian",
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
                          SizedBox(
                            height: 20,
                            width: 10,
                          ),
                          ElevatedButton(
                            child: const Text(
                              "Desi ",
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
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                  height: 10,
                ),
                Container(
                  height: 485,
                  width: 200,
                  color: Colors.white,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: <Widget>[
                      Container(
                        height: 29,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 9, bottom: 1, left: 20),
                          child: Text(
                            "Recommended",
                            style: TextStyle(
                                color: Colors.amber,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Container(
                        height: 140,
                        width: 500,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: SafeArea(
                          child: ItalianMenu(),
                        ),
                      ),
                      Container(
                        height: 29,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8, left: 20),
                          child: Text(
                            "Desi Food",
                            style: TextStyle(
                                color: Colors.amber,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                        width: 0,
                      ),
                      Container(
                        height: 140,
                        width: 500,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: SafeArea(
                          child: FoodMenu(),
                        ),
                      ),
                      Container(
                        height: 29,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 9, bottom: 1, left: 20),
                          child: Text(
                            "Chinese Food",
                            style: TextStyle(
                                color: Colors.amber,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Container(
                        height: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: SafeArea(
                          child: ChineseMenu(),
                        ),
                      ),
                      Container(
                        height: 29,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 9, bottom: 1, left: 20),
                          child: Text(
                            "Italian Food",
                            style: TextStyle(
                                color: Colors.amber,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Container(
                        height: 140,
                        width: 500,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: SafeArea(
                          child: ItalianMenu(),
                        ),
                      ),
                      SizedBox(
                        height: 17,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
