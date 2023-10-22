import 'package:flutter/material.dart';

class Dishingredients extends StatelessWidget {
  const Dishingredients(
      {required this.dishid,
      required this.cardid,
      required this.ingredient,
      super.key});

  final List<String> ingredient;
  final int dishid, cardid;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: ingredient.map((e) {
        if (dishid == cardid) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: SizedBox(
              height: 70,
              child: Card(
                child: Text(e),
              ),
            ),
          );
        } else {
          return const SizedBox();
        }
      }).toList(),
    );
  }
}
