import 'package:flutter/material.dart';
import 'package:online_shop/widgets/app_drawer.dart';

class OrderScreen extends StatelessWidget {
  static const routeName = "/order-screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Your order"),),
        body: Container());
  }
}
