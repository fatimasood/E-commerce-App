import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'FoodItemWidget.dart';

class ItalianMenu extends StatelessWidget {
  List<FoodItemWidget> foodItems = [
    FoodItemWidget(
        name: 'Pizza',
        description: 'Italian Margherita Pizza ',
        price: 500,
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRr8OxGMDEkiN8RbPXDCLllmPY20Fok18B5bCGfwFOzIrSVCgUqyDjac0wyLLb8DzKtbQ&usqp=CAU'),
    FoodItemWidget(
        name: 'Risotto ',
        description: 'Delicious Flavorful Creamy Risotto',
        price: 600,
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDOTh4Zx6W4BcaBChEReQU3rSnEpP_UZwsXWhCqYasjU518tecnp84W_mva8w8pdhe8bE&usqp=CAU'),

    FoodItemWidget(
        name: 'Salad',
        description: 'Italian Caprese Salad',
        price: 550,
        imageUrl:
            'https://www.seriouseats.com/thmb/5kQKbm3V-zgurSr95PTITqaS_vs=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/classic-caprese-salad-recipe-hero-05_1-9ce2f9b0601c45279e07320f9548fa66.JPG'),

    FoodItemWidget(
        name: 'Bruschetta  ',
        description: 'Giariniera Bruschetta',
        price: 400,
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgFcTIb89GyBMtmPW6m1uZbEdVq0JI9gM_1ilyZ2ynEYgFlVptasdXHU42L7s1SHTu9mQ&usqp=CAU'),

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
              ));
        },
      ),
    );
  }
}
