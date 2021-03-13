import 'package:flutter/cupertino.dart';

import 'product.dart';
class Products  with ChangeNotifier {

  final List<Product> _items = [
    Product(
      id: "pa1",
      title: "Red t shirt",
      description: "a red t shirt it is pretty red",
      price: 29.0,
    ),
    Product(
      id: "pa7",
      title: "Red t shirt",
      description: "a red t shirt it is pretty red",
      price: 1229.0,
    ),
    Product(
      id: "pa6",
      title: "Red t shirt",
      description: "a red t shirt it is pretty red",
      price: 269.0,
    ),
    Product(
      id: "pa5",
      title: "Red yesslo t shirt",
      description: "a red t shirt it is pretty red",
      price: 529.0,
    ),
    Product(
      id: "pa4",
      title: "black t shirt",
      description: "a red t shirt it is pretty red so simple",
      price: 249.0,
    ),
    Product(
      id: "pa3",
      title: "Red t shirt",
      description: "a red t shirt it is pretty red xmy and the large",
      price: 129.0,
    ),
    Product(
      id: "pa2",
      title: "amount g th  shirt",
      description: "a red t shirt it is pretty red yelo the shrink tha value",
      price: 245.0,
    ),
  ];

  // var _showFavoriteOnly = false;


  List<Product> get items {
    // if(_showFavoriteOnly){
    //   return _items.where((productItem) => productItem.isFavorite).toList();
    // }
    return [..._items];
  }

  // void showFavoriteOnly(){
  //   _showFavoriteOnly = true;
  //   notifyListeners();
  // }
  //
  // void showFavoriteAll(){
  //   _showFavoriteOnly = false;
  //   notifyListeners();
  // }

  List<Product> get favoriteItems  {
    return _items.where((product) => product.isFavorite).toList();
  }
  Product findById(String id){
    return _items.firstWhere((loadedProduct) => loadedProduct.id == id);
  }

  void addProduct(){
    // _items.add();
    notifyListeners();
  }



}