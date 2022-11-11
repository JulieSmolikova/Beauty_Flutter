// @dart=2.9
import 'package:beauty/start_page.dart';
import 'package:beauty/top_page.dart';
import 'package:flutter/material.dart';
import 'package:hexagon/hexagon.dart';
import 'Top_item_page.dart';
import 'package:beauty/arrival_item_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,


      routes: {
        '/start_page': (context) => const StartPage(),
        '/top_page': (context) => const TopPage(),
        '/Top_item_page': (context) => const TopItemPage(),
        '/arrival_item_page': (context) => const ArrivalItemPage(),
      },
      initialRoute: '/start_page',


      home: Scaffold(),
    );
  }
}
