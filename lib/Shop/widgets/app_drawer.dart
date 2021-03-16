import 'package:flutter/material.dart';
import 'package:online_shop/Shop/helper/CustomRoute.dart';
import 'package:online_shop/Shop/screens/orders_screen.dart';
import '../screens/order_details_screen.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(title: Text("Hello Friend !"),
          automaticallyImplyLeading: false,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.shop),
            title: Text("Shop"),
            onTap: (){
              Navigator.of(context).pushReplacementNamed('/');
              // Navigator.of(context).pushReplacement(CustomRoute(
              //   builder: (ctx) => OrderScreen()),
              // );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.payment),
            title: Text("Payment"),
            onTap: (){
              Navigator.of(context).pushReplacementNamed(OrderDetailsScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
