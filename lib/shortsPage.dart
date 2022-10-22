

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'animation.dart';

class shorts extends StatefulWidget {
  const shorts({Key? key}) : super(key: key);

  @override
  State<shorts> createState() => _shortsState();
}

class _shortsState extends State<shorts> {
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
    return  isLoading ? Center(
      child: Container(
        child: animation(),
      ),
    ) : const Center(
      child: Text("this is shorts page",style: optionStyle,),
    ) ;
  }
}
