import 'package:flutter/material.dart';
import 'package:untitled2/Screens/FoodMenu.dart';

import 'FoodItemWidget.dart';

class MenuScreenD extends StatefulWidget {
  @override
  _MenuScreenDState createState() => _MenuScreenDState();
}

class _MenuScreenDState extends State<MenuScreenD> {
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 12, left: 15),
              child: Text(
                "Menu",
                style: TextStyle(
                    color: Colors.amber,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: SafeArea(
                child: TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    //ADD clear button to the search bar
                    suffixIcon: IconButton(
                      icon: Icon(Icons.clear),
                      onPressed: () => _searchController.clear(),
                    ),
                    prefixIcon: IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {
                        //Perform the search here
                      },
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.zero,
                          bottomLeft: Radius.zero),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 12,
              width: 12,
            ),
            Container(
              height: 580,
              width: 500,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.amber.shade400,
              ),
              child: SafeArea(
                child: FoodMenu(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
