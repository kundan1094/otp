import 'package:flutter/material.dart';
import 'hme.dart';


void main() =>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'flutter app',
      theme: ThemeData(
        primaryColor:  Colors.blue,
      ),
      home:  hme(),

    );
  }
}
