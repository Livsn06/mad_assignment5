import 'package:flutter/material.dart';
import 'package:recipeapp/classes/categoryclass.dart';
import 'package:recipeapp/data/categorydata.dart';

class Categoryscreen extends StatelessWidget {
  Categoryscreen({required this.backtotitle, required this.cardtap, super.key});
  final Function backtotitle;
  final Function cardtap;
  final categorylist = CATEGORYLIST;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 231, 230, 230),
      //! APPBAR
      appBar: AppBar(
        //! BACK BUTTON
        leading: IconButton(
          onPressed: () {
            backtotitle();
          },
          icon: const Icon(Icons.arrow_back),
        ),

        //--
        title: const Text("Dish List"),
        centerTitle: true,
      ),
      body: GridView(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
        children: categorylist.map((e) {
          return Categoryclass(
            e.id,
            src: e.src,
            title: e.title,
            cardtap: cardtap,
          );
        }).toList(),
      ),
    );
  }
}
