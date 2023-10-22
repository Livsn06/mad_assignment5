import 'dart:io';

import 'package:flutter/material.dart';

class Titlescreen extends StatelessWidget {
  const Titlescreen({required this.gotoCategory, super.key});
  final Function gotoCategory;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //! IMAGE
            Image.network(
                "https://st5.depositphotos.com/1748586/65901/v/450/depositphotos_659010562-stock-illustration-young-woman-cooking-kitchen-healthy.jpg"),

            //! TITLE TEXT
            const Text(
              "Title Screen",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30),
            ),

            // ! BUTTON 1
            ElevatedButton(
                onPressed: () {
                  gotoCategory();
                },
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                //--
                child: const Text("Read")),

            // ! BUTTON 2
            ElevatedButton(
                onPressed: () {
                  exit(0);
                },
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.orange)),
                //--
                child: const Text("Exit"))
          ],
        ),
      ),
    );
  }
}
