import 'package:flutter/material.dart';

class Badget extends StatelessWidget {

  Badget({Key key, @required this.child, this.color, @required this.value}) : super(key: key );

  final Widget child;
  final Color color;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        child,
        Positioned(
          left: 8,
          top: 8,
          child: Container(
            padding: EdgeInsets.all(2.0),
            height: 12,
            width: 12,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: color != null ? color: Theme.of(context).accentColor,
            ),
            constraints: BoxConstraints(
              minHeight: 16, minWidth: 16,
            ),
            child: Text(value, style: TextStyle(fontSize: 12, color: Colors.white),
            textAlign: TextAlign.center,),
          ),
        )
      ],
    );
  }
}
