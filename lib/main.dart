import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_showcases/coinbase/pages/coinbase_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CoinbaseHomePage(),
    );
  }
}
