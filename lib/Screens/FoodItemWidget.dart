import 'package:flutter/material.dart';

class FoodItemWidget extends StatelessWidget {
  final String name;
  final String description;
  final double price;
  final String imageUrl;
  final String cart;

  FoodItemWidget(
      {Key key,
      this.name,
      this.description,
      this.price,
      this.cart,
      this.imageUrl})
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
                fontSize: 13),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                description,
                style: TextStyle(color: Colors.black54, fontSize: 10),
              ),
              Text(
                '\$${price.toStringAsFixed(2)}',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.normal,
                ),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.add_shopping_cart,
                  color: Colors.black,
                ),
                label: Text("Add"),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.remove_shopping_cart,
                  color: Colors.black,
                ),
                label: Text("Remove"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
