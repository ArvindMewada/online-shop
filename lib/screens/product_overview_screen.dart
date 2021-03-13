import 'package:flutter/material.dart';
import 'package:online_shop/providers/cart.dart';
import 'package:online_shop/widgets/Badge.dart';
import 'package:online_shop/widgets/product_grid.dart';
import 'package:provider/provider.dart';
import '../screens/cart_item_screen.dart';

enum FilterOptions { Favorites, All }

class ProductOverviewScreen extends StatefulWidget {
  @override
  _ProductOverviewScreenState createState() => _ProductOverviewScreenState();
}

class _ProductOverviewScreenState extends State<ProductOverviewScreen> {
  bool _showOnlyFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shop"),
        actions: [
          PopupMenuButton(
            onSelected: (FilterOptions selected) {
              setState(() {
                if (selected == FilterOptions.Favorites) {
                  _showOnlyFavorite = true;
                } else {
                  _showOnlyFavorite = false;
                }
              });
            },
            itemBuilder: (_) => [
              PopupMenuItem(
                child: Text("Only Favorite"),
                value: FilterOptions.Favorites,
              ),
              PopupMenuItem(
                child: Text("Show All "),
                value: FilterOptions.All,
              ),
            ],
            icon: Icon(Icons.more_vert, color: Colors.white),
          ),
          Consumer<Cart>(
            builder: (_, cart, ch) => Badget(
              value: cart.itemCount.toString(),
              color: Colors.red,
              child: ch,
            ),
            child: IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(CartItemScreen.routeName);
              },
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: ProductGrid(_showOnlyFavorite),
      ),
    );
  }
}
