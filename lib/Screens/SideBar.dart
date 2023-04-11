import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: 380,
        child: Stack(
          children: [
            Container(
              color: Colors.amber,
              height: 1000,
              width: 297,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                      ),
                      title: Text(
                        "Fatima Masood",
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Text(
                        "fatimamasood@gmail.com",
                        style: TextStyle(color: Colors.white54),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        height: 50,
                        width: 290,
                        child: ListTile(
                          selectedTileColor: Colors.white54,
                          onTap: () {
                            //Move on next Screen
                          },
                          title: Text(
                            "Feedback",
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.white30 // set the color of the circle
                            ),
                        child: ListTile(
                          title: Text(
                            "Connect with us",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Container(
                        height: 50,
                        width: 290,
                        child: ListTile(
                          selectedTileColor: Colors.white54,
                          onTap: () {
                            //Move on next Screen
                          },
                          title: Padding(
                            padding: const EdgeInsets.only(left: 80),
                            child: Text(
                              "Facebook",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                            color: Colors.white,
                          ),
                          leading: Image.asset('assets/img_6.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Container(
                        height: 50,
                        width: 290,
                        child: ListTile(
                          selectedTileColor: Colors.white54,
                          onTap: () {
                            //Move on next Screen
                          },
                          title: Padding(
                            padding: const EdgeInsets.only(left: 75),
                            child: Text(
                              "Instagram",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                            color: Colors.white,
                          ),
                          leading: Image.asset('assets/img_6.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Container(
                        height: 50,
                        width: 290,
                        child: ListTile(
                          selectedTileColor: Colors.white54,
                          onTap: () {
                            //Move on next Screen
                          },
                          title: Padding(
                            padding: const EdgeInsets.only(left: 75),
                            child: Text(
                              "Whatsapp",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                            color: Colors.white,
                          ),
                          leading: Image.asset('assets/img_8.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Container(
                        height: 50,
                        width: 290,
                        child: ListTile(
                          selectedTileColor: Colors.white54,
                          onTap: () {
                            //Move on next Screen
                          },
                          title: Padding(
                            padding: const EdgeInsets.only(left: 95),
                            child: Text(
                              "Call us",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                            color: Colors.white,
                          ),
                          leading: Image.asset('assets/img_7.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 30,
              left: 275,
              child: Container(
                width: 40, // specify the width of the circle
                height: 40, // specify the height of the circle
                decoration: BoxDecoration(
                  shape: BoxShape.circle, // set the shape to circle
                  color: Colors.amber, // set the color of the circle
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
