import 'package:flutter/material.dart';
import 'package:youtube_ui/shimmerPage.dart';



void main(){
  runApp(myapp());
}


class myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      home: shimmerPage(),
    );
  }
}