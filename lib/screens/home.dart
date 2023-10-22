import 'package:flutter/material.dart';
import 'package:recipeapp/components/category.dart';
import 'package:recipeapp/components/title.dart';

import '../components/dishcontent.dart';

// ignore: must_be_immutable
class Homescreen extends StatefulWidget {
  Homescreen({super.key});
  int dishid = 1;
  String name = "";
  String dishimage = "";

  bool isback = false, toplay = false, iscardtap = false;
  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  gotoCategory() {
    setState(() {
      widget.iscardtap = false;
      widget.isback = false;
      widget.toplay = true;
    });
  }

  bactoScreen() {
    setState(() {
      widget.isback = true;
    });
  }

  cardtap(id, name, image) {
    setState(() {
      widget.dishid = id;
      widget.name = name;
      widget.dishimage = image;
      widget.iscardtap = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (widget.iscardtap) {
      return Dishcontent(
        widget.dishid,
        widget.name,
        widget.dishimage,
        backtocategory: gotoCategory,
      );
    }
    if (widget.isback) {
      return Titlescreen(gotoCategory: gotoCategory);
    }
    if (widget.toplay) {
      return Categoryscreen(
        backtotitle: bactoScreen,
        cardtap: cardtap,
      );
    } else {
      return Titlescreen(gotoCategory: gotoCategory);
    }
  }
}
