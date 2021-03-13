import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:online_shop/providers/order.dart' as ord;
import 'package:online_shop/screens/orders_screen.dart';

class OrderItem extends StatelessWidget {
  final ord.OrderItem orderItem;

  OrderItem(this.orderItem);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text("${orderItem.amount}"),
        subtitle: Text(DateFormat('dd MM yyyy hh:mm').format(orderItem.dateTime)),
        trailing: IconButton(
          onPressed: (){
            Navigator.of(context).pushNamed(OrderScreen.routeName);
          },
          icon: Icon(Icons.expand_more),
        ),
      ),

    );
  }
}
