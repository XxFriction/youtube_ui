

import 'package:flutter/material.dart';

import 'animation.dart';

class libraryPage extends StatefulWidget {
  const libraryPage({Key? key}) : super(key: key);

  @override
  State<libraryPage> createState() => _libraryPageState();
}

class _libraryPageState extends State<libraryPage> {
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
      child: Text("this is library page",style: optionStyle,),
    ) ;
  }
}
