import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cart.dart' show Cart;
import '../providers/order.dart';
import '../widgets/cart_item.dart';
import '../screens/order_details_screen.dart';

class CartItemScreen extends StatelessWidget {
  static const String routeName = "/cart-item";

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Cart"),
      ),
        body: SafeArea(
      child: Card(
        margin: EdgeInsets.all(12.0),
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Total", textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                  SizedBox(width: 8,),
                  Spacer(),
                  Chip(
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
                  TextButton(
                    onPressed: (){
                      Provider.of<Order>(context, listen: false).addOrder(
                        cart.items.values.toList(),
                        cart.totalAmount,
                      );
                      cart.clear();
                      Navigator.of(context).pushNamed(OrderDetailsScreen.routeName);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("Order now", style: TextStyle(fontSize: 14,
                          fontWeight: FontWeight.bold, color: Theme.of(context).primaryColorDark),),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.0,),
              Expanded(child: ListView.builder(
                itemCount: cart.items.length,
                itemBuilder: (ctx, i) => CartItem(
                  title: cart.items.values.toList()[i].title,
                  productId: cart.items.keys.toList()[i],
                  id: cart.items.values.toList()[i].id,
                  price: cart.items.values.toList()[i].price,
                    quantity: cart.items.values.toList()[i].quantity,
                ),
              )),
            ],
          ),
        ),
      ),
    ));
  }
}
