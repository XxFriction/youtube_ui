import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:youtube_ui/homePage.dart';
import 'package:youtube_ui/loaderpage.dart';

class shimmerPage extends StatefulWidget {
  const shimmerPage({Key? key}) : super(key: key);
  @override
  State<shimmerPage> createState() => _shimmerPageState();
}

class _shimmerPageState extends State<shimmerPage> {
  bool isLoading = true;
  @override
  void initState(){
    isLoading = true;
    Future.delayed(Duration(milliseconds: 1500),(){
      setState(() {
        isLoading = false;
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return isLoading ? myloader() : home();
  }

}
