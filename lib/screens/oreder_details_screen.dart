import 'package:flutter/material.dart';
import 'package:online_shop/providers/order.dart' show Order;
import 'package:online_shop/widgets/order_item.dart';
import 'package:provider/provider.dart';

class OrderDetailsScreen extends StatelessWidget {
 static const routeName = "/order-details-screen";

  @override
  Widget build(BuildContext context) {
    final orderData = Provider.of<Order>(context);
    return Scaffold(
      appBar: AppBar(title: Text("Order Summary"),),
      body: SafeArea(
        child: ListView.builder(
          itemCount: orderData.orders.length,
          itemBuilder: (ctx, i) => OrderItem(orderData.orders[i]),
        ),
      ),
    );
  }
}
