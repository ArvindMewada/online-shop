import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:online_shop/providers/order.dart' as ord;

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

          },
          icon: Icon(Icons.expand_more),
        ),
      ),

    );
  }
}
