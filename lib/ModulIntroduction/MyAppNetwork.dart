import 'package:flutter/material.dart';

class MyAppNetwork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Network',
      theme: ThemeData(
          primarySwatch: Colors.lightBlue,
          visualDensity: VisualDensity.standard,
          backgroundColor: Colors.white,
          primaryColor: Colors.blue),
    );
  }
}
