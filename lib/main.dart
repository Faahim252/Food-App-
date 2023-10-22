import 'package:flutter/material.dart';
import 'package:food/screens/home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            primarySwatch: Colors.orange,
            visualDensity: VisualDensity.adaptivePlatformDensity),
        debugShowCheckedModeBanner: false,
        home: HomeScreen());
  }
}
