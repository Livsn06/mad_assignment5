import 'package:flutter/material.dart';

class Categoryclass extends StatelessWidget {
  const Categoryclass(this.id,
      {required this.src,
      required this.title,
      required this.cardtap,
      super.key});

  //! INITIALIZER
  final int id;
  final String src;
  final String title;
  final Function cardtap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),

      //! CARDS
      child: InkWell(
        //! BUTTON TAP FUNCTION
        onTap: () {
          cardtap(id, title, src);
        },
        //! CARD
        child: Card(
          elevation: 5,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //! IMAGE
                SizedBox(
                    height: 290,
                    child: Image.network(
                      src,
                      fit: BoxFit.cover,
                    )),

                //! IMAGE TITLE
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ]),
        ),
      ),
    );
  }
}
