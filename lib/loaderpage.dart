import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class myloader extends StatefulWidget {
  const myloader({Key? key}) : super(key: key);

  @override
  State<myloader> createState() => _myloaderState();
}

class _myloaderState extends State<myloader> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff212121),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff212121),
        title: Row(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              width: 38,
              height: 24,
              decoration: BoxDecoration(
                color: Color(0xffff0000),
                borderRadius: BorderRadius.circular(4.5),
              ),
              child: const Center(
                child: Icon(Icons.play_arrow,color: Colors.white,),
              ),
            ),
            const Text(
              "YouTube",
              style: TextStyle(
                  fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
        actions: [
          Row(
            children: const [
              Icon(Icons.ondemand_video_outlined),
              SizedBox(width: 10,),
              Icon(Icons.notifications_outlined),
              SizedBox(width: 10,),
              Icon(Icons.search_outlined),
              SizedBox(width: 10,),
              CircleAvatar(radius: 14,backgroundImage: NetworkImage("https://lh3.googleusercontent.com/a/ALm5wu1BXZEz9UQKXoniSPv9cfY_apLqCM-JvceC6om9lw=s360-p-no"),backgroundColor: Color(0xff383838),),
              SizedBox(width: 10,),
            ],
          )

        ],
      ),
      body: Shimmer.fromColors(
          child: Column(
            children: [
              Container(
                  width: (MediaQuery.of(context).size.width),
                  height: 45,
                  color: Color(0xff212121),
                  child: SizedBox(
                      height: 45,
                      child: Row(
                        children: [
                          addCategory(),
                          addCategory(),
                          addCategory(),
                          addCategory(),
                        ],
                      )
                  )
              ),
              addVideo(),
              addVideo(),
            ],
          ),
        baseColor: Color(0xff4d4d4d),
        highlightColor: Color(0xff6e6e6e),
        loop: 3,
      )
    );
  }
  Container addCategory(){
    return Container(
      margin: EdgeInsets.only(left: 8,top: 5,bottom: 5),
      width: 92,
      height: 30,
      decoration: BoxDecoration(
        color: Color(0xff383838) ,
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
  Container addVideo(){
    return  Container(
      margin: EdgeInsets.only(top: 5),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 5),
            width: (MediaQuery.of(context).size.width),
            height: 240,
            decoration: const BoxDecoration(
                color: Color(0xff4d4d4d)
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 8,),
                CircleAvatar(radius: 22,backgroundColor: Color(0xff4d4d4d),),
                SizedBox(width: 8,),
                Column(
                  crossAxisAlignment:CrossAxisAlignment.start ,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      width: 320,
                      height: 15,
                      decoration: BoxDecoration(
                          color: Color(0xff4d4d4d),
                          borderRadius: BorderRadius.circular(3)
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      width: 320,
                      height: 15,
                      decoration: BoxDecoration(
                          color: Color(0xff4d4d4d),
                          borderRadius: BorderRadius.circular(3)
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      width: 100,
                      height: 15,
                      decoration: BoxDecoration(
                          color: Color(0xff4d4d4d),
                          borderRadius: BorderRadius.circular(3)
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}






/*Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade50,
      child: Container(
          height: (MediaQuery.of(context).size.height),
          width: (MediaQuery.of(context).size.width),
          color: Colors.grey.withOpacity(0.5),
          child:
      ),
    )*/
