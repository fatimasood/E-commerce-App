import 'package:flutter/material.dart';

import 'FoodItemWidget.dart';

class FoodMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context, int $index) {
          String name = "Food item ";
          String description = 'Description of Food Item ';
          String imageUrl =
              'https://thumbs.dreamstime.com/z/pizza-salami-arugula-wooden-board-36924315.jpg';

          double price = 9.99;

          return FoodItemWidget(
            name: name,
            description: description,
            price: price,
            imageUrl: imageUrl,
          );
        },
      ),
    );
  }
}
