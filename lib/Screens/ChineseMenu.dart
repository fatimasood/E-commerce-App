import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'FoodItemWidget.dart';

class ChineseMenu extends StatelessWidget {
  List<FoodItemWidget> foodItems = [
    FoodItemWidget(
        name: 'Sweet and Sour Chicken',
        description: 'Chinese Chicken',
        price: 700,
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0LBxxzpv0u-Vsoo_VmD1ppQvNOvc7sGL9fQcCXHW_zowMxTEaJpX3F0HDN2pdpSl4MYE&usqp=CAU'),
    FoodItemWidget(
        name: 'Fried Rice',
        description: 'Delicious Fried Rice',
        price: 750,
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbd7PxuyGoqAlMr1LLLu0ijC8P-zyLiAFg0VD3OQZIP0o7lppMwJe-ydQgx0SHIR5Z4Ro&usqp=CAU'),

    FoodItemWidget(
        name: 'Manchurian',
        description: 'Chicken Manchurian',
        price: 800,
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRflv7NgsltFotQLkBYKNVQU33Row6EBDZBjQygnl4oATbcySXr98Od61tDleQW0HZKl7k&usqp=CAU'),

    // Add more food items as needed
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: foodItems.length,
        itemBuilder: (context, index) {
          FoodItemWidget foodItemWidget = foodItems[index];
          return Padding(
            padding: const EdgeInsets.only(top: 0, left: 5, right: 5),
            child: Container(
              width: 270,
              decoration: BoxDecoration(
                color: Colors.amberAccent,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 15, left: 0, right: 0.0, bottom: 7),
                child: ListTile(
                  title: Text(foodItemWidget.name),
                  subtitle: Text(foodItemWidget.description),
                  leading: Image.network(foodItemWidget.imageUrl),
                  trailing:
                      Text('\$${foodItemWidget.price.toStringAsFixed(2)}'),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
