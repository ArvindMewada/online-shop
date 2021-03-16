import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'helper/CustomRoute.dart';
import 'providers/cart.dart';
import 'providers/order.dart';
import 'providers/products.dart';
import 'screens/cart_item_screen.dart';
import 'screens/order_details_screen.dart';
import 'screens/orders_screen.dart';
import 'screens/product_detail_screen.dart';
import 'screens/product_overview_screen.dart';




class MyAppShop extends StatelessWidget {
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
          pageTransitionsTheme: PageTransitionsTheme(
            builders: {
              TargetPlatform.android : CustomPageTransitionBuilder(),
              TargetPlatform.iOS : CustomPageTransitionBuilder()
            }
          )
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

