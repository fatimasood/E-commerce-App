import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'FoodItemWidget.dart';

class FoodMenu extends StatelessWidget {
  List<FoodItemWidget> foodItems = [
    FoodItemWidget(
        name: 'Biryani',
        description: 'Single Chicken Biryani',
        price: 250,
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOQ5UbJd5iFwH90vntQGspeg2Coe8BAIzCW5ZWE6XovW116gEqlaNpbVvjNjlBtu0im1I&usqp=CAU'),
    FoodItemWidget(
        name: 'Nihari',
        description: 'Delicious Beef Nihari',
        price: 300,
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjuWR1MtPZv8przRJuxCC2Htkri1Zt7eTB2x5zdJBRx-AbuI5-Rre4VDL_EmPMGZphS6Y&usqp=CAU'),

    FoodItemWidget(
        name: 'Karahi',
        description: 'Tasty Chicken Karahi',
        price: 330,
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSK9GJJN66tjJT3FgrSmQZubEIWpcDlLnHnmkvrTGexJ6ALkd64c-Eh1e8G4oDw8WUGAhk&usqp=CAU'),
    FoodItemWidget(
        name: 'Chapli Kabab',
        description: 'Beef Chapli Kabab',
        price: 150,
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwdTx6KA4XSW0a8ZGUv_n7_v_T7QhFSzZfpGfFfG9JAszadwyZr8MS07cFPbC--JFoPhw&usqp=CAU'),
    FoodItemWidget(
        name: 'Seekh Kabab',
        description: 'Pak Seekh Kabab',
        price: 100,
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwsLxKxAFoaL6mEjBxVuyamUKygpGARh56LhYwoZT_pfc_iulAAWFJlF15XdzcUAgaYnU&usqp=CAU'),
    FoodItemWidget(
        name: 'Chana Chaat',
        description: 'Tasty Chana Chaat',
        price: 100,
        imageUrl:
            'https://www.flourandspiceblog.com/wp-content/uploads/2022/04/IMG_7102-480x270.jpg'),

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
