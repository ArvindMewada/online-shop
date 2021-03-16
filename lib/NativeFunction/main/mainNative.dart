import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_shop/NativeFunction/screen/add_place_screen.dart';
import 'package:provider/provider.dart';

import '../provider/great_place.dart';
import '../screen/place_list_screen.dart';

class MyNativeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: GreatPlaces(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title:"My native app" ,
        theme: ThemeData(
          primarySwatch: Colors.indigo,
              accentColor: Colors.amber,

        ),
        home:  PlaceListScreen(),
        routes: {
          AddPlaceScreen.routeName :(context) => AddPlaceScreen(),
        },
      ),
    );
  }
}
