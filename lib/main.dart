import 'package:flutter/material.dart';
import 'pages/home.pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IMC',
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}
