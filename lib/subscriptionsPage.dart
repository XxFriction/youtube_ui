import 'package:flutter/material.dart';

import 'animation.dart';

class subscriptions extends StatefulWidget {
  const subscriptions({Key? key}) : super(key: key);
  @override
  State<subscriptions> createState() => _subscriptionsState();
}

class _subscriptionsState extends State<subscriptions> {
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
    ) : Center(
      child: Text("this is subscriptions page",style: optionStyle,),
    ) ;
  }
}
