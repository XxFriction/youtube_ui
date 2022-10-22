
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loading_animations/loading_animations.dart';

import 'animation.dart';


class add extends StatefulWidget {
  const add({Key? key}) : super(key: key);

  @override
  State<add> createState() => _addState();
}

class _addState extends State<add> {
  bool isLoading = true;
  @override
  void initState(){
    isLoading = true;
    Future.delayed(Duration(milliseconds: 1000),(){
      setState(() {
        isLoading = false;
      });
    });
    super.initState();
  }
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return isLoading ? Center(
      child: Container(
        child: animation(),
      ),
    ) : const Center(
      child: Text("this is add page",style: optionStyle,),
    ) ;
  }
}
