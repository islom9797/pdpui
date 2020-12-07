import 'package:flutter/material.dart';
import 'package:pdpui/package/home_page.dart';
import 'package:pdpui/package/pdpui.dart';
import 'package:pdpui/package/shop_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:ShopHome(),
      routes: {
        PdpUi.id:(context)=>PdpUi(),
        Register.id:(context)=>Register(),
        ShopHome.id:(context)=>ShopHome(),
      },
    );
  }
}
