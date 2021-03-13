import 'package:flutter/material.dart';
import 'package:online_shop/providers/products.dart';
import 'package:provider/provider.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = "/product-details-screen";

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    final loadedProduct = Provider.of<Products>(context, listen: false)
        .findById(productId);
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              padding: EdgeInsets.symmetric(horizontal: 16),
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
                color: Colors.grey
              ),
              child: Icon(Icons.account_box_outlined, size: 300,),
            ),
            SizedBox(height: 16,),
            Text("${loadedProduct.title}", style: Theme.of(context).
            textTheme.headline2.apply(color: Colors.black,),
            softWrap: true,
            ),
            SizedBox(height: 16,),
            Text("${loadedProduct.description}", style: Theme.of(context).textTheme.headline4,
              softWrap: true,
            ),
          ],
        ),
      ),
    );
  }
}
