import 'package:flutter/material.dart';
import 'view/bar.dart'; // Bar file import karo

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: bar(), // Yahan Bar() widget lagao
    );
  }
}
