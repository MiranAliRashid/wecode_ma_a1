import 'package:flutter/material.dart';
import 'package:wecode_ma_a1/src/login/login.dart';
import 'package:wecode_ma_a1/src/myapp.dart';
import 'package:wecode_ma_a1/src/view_image/view_images.dart';

void main() {
  runApp(
    MaterialApp(
      home: myapp(),
      //you can also use initialroute instade of home
      //  initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/login': (BuildContext context) => login(),
        '/view_image': (BuildContext context) => view_image(),
      },
    ),
  );
}
