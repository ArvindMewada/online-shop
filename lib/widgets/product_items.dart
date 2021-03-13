import 'package:flutter/material.dart';
import 'package:online_shop/providers/cart.dart';
import 'package:online_shop/providers/product.dart';
import 'package:online_shop/screens/product_detail_screen.dart';
import 'package:provider/provider.dart';

class ProductItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context, listen: false);
    final cart = Provider.of<Cart>(context, listen: false);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context)
              .pushNamed(ProductDetailScreen.routeName, arguments: product.id);
        },
        child: GridTile(
          child: Container(
            height: 200,
            width: 200,
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            ),
            child: Text(product.title.substring(0, 1), textAlign: TextAlign.center,style: Theme.of(context).textTheme.headline4,),
          ),
          footer: GridTileBar(
            leading: Consumer<Product>(
              builder: (ctx, product, _) => IconButton(
                icon: Icon(product.isFavorite
                    ? Icons.favorite
                    : Icons.favorite_border_outlined),
                onPressed: () {
                  product.toggleFavoriteStatus();
                },
              ),
            ),
            trailing: IconButton(
              icon: Icon(
                Icons.shopping_cart,
              ),
              onPressed: () {
                cart.addItem(product.id, product.price, product.title);
              },
            ),
            backgroundColor: Colors.black87,
            title: Text(
              product.title,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
