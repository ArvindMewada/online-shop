import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/products.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = "/product-details-screen";

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    final loadedProduct =
        Provider.of<Products>(context, listen: false).findById(productId);
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(loadedProduct.title),
      // ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(loadedProduct.title),
              background: Hero(
                tag: loadedProduct.id,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
                      color: Colors.grey),
                  child: Icon(
                    Icons.account_box_outlined,
                    size: 300,
                  ),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            SizedBox(
              height: 16,
            ),
            Text(
              "${loadedProduct.title}",
              style: Theme.of(context).textTheme.headline2.apply(
                    color: Colors.black,
                  ),
              softWrap: true,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "${loadedProduct.description}",
              style: Theme.of(context).textTheme.headline4,
              softWrap: true,
              textAlign: TextAlign.center,
            ),
            Text(
              "${loadedProduct.price}",
              style: Theme.of(context).textTheme.headline2.apply(
                    color: Colors.black,
                  ),
              softWrap: true,
              textAlign: TextAlign.center,
            ),
          ])),
        ],
      ),
    );
  }
}
