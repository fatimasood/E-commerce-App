import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'AccountScreenD.dart';
import 'CartScreen.dart';
import 'HomeScreenD.dart';
import 'MenuScreenD.dart';

class firstScreen extends StatefulWidget {
  @override
  _firstScreenState createState() => _firstScreenState();
}

class _firstScreenState extends State<firstScreen> {
  int _selectedIndex = 0;

  // List of screens for each drawer item
  final List<Widget> _screens = [
    HomeScreenD(),
    AccountScreenD(),
    MenuScreenD(),
    CartScreen(),
  ];

  void _onDrawerItemClicked(int index) {
    setState(() {
      _selectedIndex = index;
    });
    Navigator.of(context).pop(); // Close the drawer
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
            // set the shape to circle
            color: Colors.amber, // set the color of the circle
          ),
          child: SafeArea(
            child: ListView(
              padding: EdgeInsets.zero,
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
                  padding: EdgeInsets.zero,
                  child: Container(
                    height: 40,
                    child: ListTile(
                      selectedTileColor: Colors.white54,
                      onTap: () {
                        //move to next screen
                        _onDrawerItemClicked(0);
                      },
                      leading: Icon(
                        Icons.home,
                        size: 20,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Order",
                        style: TextStyle(color: Colors.white, fontSize: 16),
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
                  padding: EdgeInsets.zero,
                  child: Container(
                    height: 40,
                    child: ListTile(
                      selectedTileColor: Colors.white54,
                      onTap: () {
                        //move to next screen
                        _onDrawerItemClicked(2);
                      },
                      leading: Icon(
                        Icons.restaurant_menu,
                        size: 20,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Menu",
                        style: TextStyle(color: Colors.white, fontSize: 16),
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
                  padding: EdgeInsets.zero,
                  child: Container(
                    height: 40,
                    child: ListTile(
                      selectedTileColor: Colors.white54,
                      onTap: () {
                        //move to next screen
                        _onDrawerItemClicked(1);
                      },
                      leading: Icon(
                        Icons.person,
                        size: 20,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Account",
                        style: TextStyle(color: Colors.white, fontSize: 16),
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
                  padding: EdgeInsets.zero,
                  child: Container(
                    height: 40,
                    child: ListTile(
                      selectedTileColor: Colors.white54,
                      onTap: () {
                        //move to next screen
                        _onDrawerItemClicked(3);
                      },
                      leading: Icon(
                        Icons.shopping_cart,
                        size: 20,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Cart",
                        style: TextStyle(color: Colors.white, fontSize: 16),
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
                    height: 45,
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
                          style: TextStyle(color: Colors.white, fontSize: 16),
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
                    height: 45,
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
                          style: TextStyle(color: Colors.white, fontSize: 16),
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
                    height: 45,
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
                          style: TextStyle(color: Colors.white, fontSize: 16),
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
      ),
      body: _screens[_selectedIndex],
    );
  }
}
