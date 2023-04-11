import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'SideBar.dart';

class firstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          SideBar(),
        ],
      ),
    );
  }
}
