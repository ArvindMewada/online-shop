import 'package:flutter/material.dart';
import 'package:online_shop/providers/cart.dart';
import 'package:provider/provider.dart';

class CartItemScreen extends StatelessWidget {
  static const String routeName = "/cart-item";

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart Item"),
      ),
        body: SafeArea(
      child: Card(
        margin: EdgeInsets.all(12.0),
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Chip(
            padding: EdgeInsets.all(16.0),
            backgroundColor: Theme.of(context).accentColor,
            elevation: 8.0,
            label: Text(
              "${cart.totalAmount}",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    ));
  }
}
