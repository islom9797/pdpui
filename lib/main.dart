import 'package:flutter/material.dart';
import 'package:pdpui/package/home_page.dart';
import 'package:pdpui/package/pdpui.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:PdpUi(),
      routes: {
        PdpUi.id:(context)=>PdpUi(),
        Register.id:(context)=>Register(),
      },
    );
  }
}
