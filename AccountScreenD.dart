import 'package:flutter/material.dart';
import 'package:untitled2/Screens/login.dart';
import 'package:untitled2/Screens/orders.dart';

class AccountScreenD extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 28, left: 11),
                    child: Container(
                      width: 100,
                      height: 70,
                      child: Column(
                        children: [
                          Text(
                            "Hello, ",
                            style: TextStyle(
                                fontSize: 23, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8, left: 15),
                            child: Text(
                              "Fatima ",
                              style: TextStyle(
                                  color: Colors.amber,
                                  fontSize: 27,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 28, left: 170),
                    child: Container(
                      width: 100,
                      height: 70,
                      child: Image.asset('assets/img_1.png'),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 15, right: 15),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 14),
                    border: InputBorder.none,
                    hintText: 'Add your Address',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12, left: 15, right: 15),
              child: Container(
                height: 60,
                child: ListTile(
                  onTap: () {
                    //Screen
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => orders(),
                        ));
                  },
                  title: Text(
                    "My Orders",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 14,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 70, left: 30, right: 30),
              child: SizedBox(
                height: 45,
                width: 160,
                child: ElevatedButton(
                  child: const Text(
                    "Log out",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w800),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => login(),
                        ));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
