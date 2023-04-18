import 'package:flutter/material.dart';
import 'package:untitled2/Screens/FoodMenu.dart';

import 'ChineseMenu.dart';
import 'ItalianMenu.dart';

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
                padding: const EdgeInsets.only(top: 9, bottom: 1, left: 20),
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
                padding: const EdgeInsets.only(top: 9, bottom: 1, left: 20),
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
          ],
        ),
      ),
    );
  }
}
