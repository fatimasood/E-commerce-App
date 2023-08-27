import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: Text(
                "Your Cart....",
                style: TextStyle(
                    color: Colors.amber,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 250, left: 150),
            child: Text(
              "Cart is Empty!!",
              style: TextStyle(color: Colors.black38, fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
