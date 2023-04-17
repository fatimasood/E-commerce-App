import 'package:flutter/material.dart';

class FoodItemWidget extends StatelessWidget {
  final String name;
  final String description;
  final double price;
  final String imageUrl;

  FoodItemWidget(
      {Key key, this.name, this.description, this.price, this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: ListTile(
          selectedTileColor: Colors.black12,
          leading: Image.network(
            imageUrl,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
          title: Text(
            name,
            style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.bold,
                fontSize: 15),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                description,
                style: TextStyle(color: Colors.black54, fontSize: 13),
              ),
              Text(
                '\$${price.toStringAsFixed(2)}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
