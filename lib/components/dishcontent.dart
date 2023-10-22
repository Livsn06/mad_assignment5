import 'package:flutter/material.dart';
import 'package:recipeapp/classes/ingredientclass.dart';
import 'package:recipeapp/classes/stepclass.dart';
import '../data/dishcontentdata.dart';

class Dishcontent extends StatelessWidget {
  Dishcontent(this.dishID, this.name, this.image,
      {required this.backtocategory, super.key});

  final dishcontentlist = DISHCONTENTSLIST;
  final int dishID;
  final String name;
  final String image;
  final Function backtocategory;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        leading: IconButton(
            onPressed: () {
              backtocategory();
            },
            icon: const Icon(Icons.arrow_back)),
        title: Text(name),
      ),
      body: DefaultTabController(
          length: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 310,
                child: Image.network(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
              const TabBar(
                labelColor: Colors.brown,
                indicatorColor: Colors.brown,
                tabs: [
                  Tab(
                    icon: Icon(Icons.dinner_dining),
                    text: "Ingredinets",
                  ),
                  Tab(
                    icon: Icon(Icons.list_outlined),
                    text: "Steps",
                  )
                ],
              ),
              Expanded(
                  child: TabBarView(
                children: [
                  ListView(
                    children: dishcontentlist.map((e) {
                      return Dishingredients(
                          dishid: dishID,
                          cardid: e.cardid,
                          ingredient: e.ingredient);
                    }).toList(),
                  ),
                  ListView(
                    children: dishcontentlist.map((e) {
                      return Dishsteps(
                          dishid: dishID, cardid: e.cardid, steps: e.steps);
                    }).toList(),
                  )
                ],
              )),
            ],
          )),
    );
  }
}
