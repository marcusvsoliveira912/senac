import 'package:flutter/material.dart';

void main() {
  runApp(
      new Material(
          color: Colors.limeAccent,
          child: Center(
            child: new Text("Hello World",
              textDirection: TextDirection.ltr,
              style: new TextStyle(fontSize: 40, color:
                Colors.purple,
              ),
            ),
          )
      )
  ); // RunApp
}
