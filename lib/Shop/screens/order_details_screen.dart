import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/order.dart' show Order;
import '../widgets/app_drawer.dart';
import '../widgets/order_item.dart';

class OrderDetailsScreen extends StatelessWidget {
 static const routeName = "/order-details-NativeFunction.screen";

  @override
  Widget build(BuildContext context) {
    final orderData = Provider.of<Order>(context);
    return Scaffold(
      drawer: AppDrawer(),
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
