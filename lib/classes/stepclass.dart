import 'package:flutter/material.dart';

class Dishsteps extends StatelessWidget {
  const Dishsteps(
      {required this.dishid,
      required this.cardid,
      required this.steps,
      super.key});

  final List<String> steps;
  final int dishid, cardid;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: steps.map((e) {
        if (dishid == cardid) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: SizedBox(
              height: 100,
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
