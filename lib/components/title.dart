import 'dart:io';

import 'package:flutter/material.dart';

class Titlescreen extends StatelessWidget {
  const Titlescreen({required this.gotoCategory, super.key});
  final Function gotoCategory;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 222, 188),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
                "https://st4.depositphotos.com/12982378/27928/i/450/depositphotos_279287006-stock-photo-oil-fresh-vegetables-cooking-utensils.jpg"),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Dish Mania",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 52, 52, 52),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  gotoCategory();
                },
                style: const ButtonStyle(
                    fixedSize: MaterialStatePropertyAll(Size.fromHeight(50)),
                    backgroundColor: MaterialStatePropertyAll(Colors.brown)),
                //--
                child: const Text("Read")),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  exit(0);
                },
                style: const ButtonStyle(
                    fixedSize: MaterialStatePropertyAll(Size.fromHeight(50)),
                    backgroundColor: MaterialStatePropertyAll(Colors.red)),
                //--
                child: const Text("Exit"))
          ],
        ),
      ),
    );
  }
}
