import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  final int quantity;
  final String title;
  final double price;
  final String id;

  CartItem({this.quantity, this.title, this.price, this.id});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        child: ListTile(
          title: Text(
            title,
            style: TextStyle(
                color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 16),
          ),
          subtitle: Text("Total: ${price * quantity}"),
          trailing: Text("$quantity X"),
          leading: FittedBox(
            alignment: Alignment.center,
            fit: BoxFit.fill,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: CircleAvatar(
                child: Text(
                  price.toString(),
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
              ),
            ),
          ),
        ));
  }
}
