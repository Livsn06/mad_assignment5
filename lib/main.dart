import 'package:flutter/material.dart';
import 'package:recipeapp/screens/home.dart';

void main() {
  runApp(const Recipeapp());
}

class Recipeapp extends StatelessWidget {
  const Recipeapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homescreen(),
    );
  }
}
