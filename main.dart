import 'package:flutter/material.dart';
import 'package:newapp/OtpView.dart';
void main() =>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'flutter app',
      theme: ThemeData(
       primaryColor: new Color(0xff622f74),
      ),
      home: OtpView(),

    );
  }
}
