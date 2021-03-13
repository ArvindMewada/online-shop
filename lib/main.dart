import 'package:flutter/material.dart';
import 'package:online_shop/providers/cart.dart';
import 'package:online_shop/providers/order.dart';
import 'package:online_shop/screens/orders_screen.dart';
import 'package:online_shop/screens/order_details_screen.dart';
import 'package:online_shop/screens/product_detail_screen.dart';
import 'package:provider/provider.dart';
import './screens/product_overview_screen.dart';
import './providers/products.dart';
import './screens/cart_item_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider (
      providers: [
        ChangeNotifierProvider(create: (ctx) => Products()),
        ChangeNotifierProvider(create: (ctx) => Cart()),
        ChangeNotifierProvider(create: (ctx) => Order()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Online Shop',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: ProductOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName : (context) => ProductDetailScreen(),
          CartItemScreen.routeName: (context) => CartItemScreen(),
          OrderDetailsScreen.routeName: (context) => OrderDetailsScreen(),
          OrderScreen.routeName:(context)=> OrderScreen(),
        },
      ),
    );
  }
}

