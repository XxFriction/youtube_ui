
import 'package:flutter/material.dart';

class video extends StatefulWidget {
  final String img;
  const video({Key? key, required this.img}) : super(key: key);

  @override
  State<video> createState() => _videoState();
}

class _videoState extends State<video> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff212121),
      body: Column(
        children: [
          Stack(
            children: [
              Hero(
                tag: 'imageHero',
                child:Container(
                  width: MediaQuery.of(context).size.width,
                  height: 240,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      image: DecorationImage(
                        image: NetworkImage(widget.img),
                        fit: BoxFit.cover,
                      )
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                  child: Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 5,
                        color: Colors.white,
                      ),
                      Positioned(
                        left: 0,
                          bottom: 0,
                          child: Container(
                            width: 100,
                            height: 5,
                            color:Colors.red ,
                          )
                      )
                    ],
                  )
              )
            ],
          ),
          Padding(padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Text(
                      "Mevlan Kurtishi - Luqman (12-14) |\nسورة لقمان",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_drop_down_outlined,color: Colors.grey,)
                ],
              ),
              Text(
                  "2.4M views . 6y ago",
                style: TextStyle(
                  color: Colors.grey.withOpacity(0.4),
                ),
              )
            ],
          ) 
          ),
          Container(
            margin: EdgeInsets.all(5),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: const [
                    Icon(Icons.favorite_outline,color: Colors.white,),
                    SizedBox(height: 5,),
                    Text(
                        "25K",
                      style: TextStyle(
                        color: Colors.white
                      ),
                    )
                  ],
                ),
                Column(
                  children: const [
                    Icon(Icons.heart_broken_rounded,color: Colors.white,),
                    SizedBox(height: 5,),
                    Text(
                        "Dislike",
                      style: TextStyle(
                          color: Colors.white
                      ),
                    )
                  ],
                ),
                Column(
                  children: const [
                    Icon(Icons.share_outlined,color: Colors.white,),
                    SizedBox(height: 5,),
                    Text(
                        "Share",
                      style: TextStyle(
                          color: Colors.white
                      ),
                    )
                  ],
                ),
                Column(
                  children: const [
                    Icon(Icons.airplay_outlined,color: Colors.white,),
                    SizedBox(height: 5,),
                    Text(
                        "Create",
                      style: TextStyle(
                          color: Colors.white
                      ),
                    )
                  ],
                ),
                Column(
                  children: const [
                    Icon(Icons.download_outlined,color: Colors.white,),
                    SizedBox(height: 5,),
                    Text(
                        "Downloa..",
                      style: TextStyle(
                          color: Colors.white
                      ),
                    )
                  ],
                ),
                Column(
                  children: const [
                    Icon(Icons.add_box_outlined,color: Colors.white,),
                    SizedBox(height: 5,),
                    Text(
                        "Save",
                      style: TextStyle(
                          color: Colors.white
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),

          Divider(thickness: 1,color: Color(0xff4d4d4d),),

          Container(
            margin: EdgeInsets.all(5),
            child: Row(
              children: [
                CircleAvatar(radius: 20,backgroundColor: Color(0xff4d4d4d),backgroundImage: NetworkImage("https://yt3.ggpht.com/2_vrxEroLwNSCqdhj25OFXUpp2bK779i6b-kvvl1keJWWI5L6Nkmh_u7yKT85javxU3ZN4pF=s48-c-k-c0x00ffffff-no-nd-rj"),),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                        "Mevlan Kuryis..",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16
                      ),
                    ),
                    Text(
                        "810K subscribers",
                      style: TextStyle(
                        color: Colors.grey.withOpacity(.4),
                        fontSize: 12
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 40,),
                const Text(
                    "SUBSCRIBED",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20
                  ),
                ),
                SizedBox(width: 40,),
                Icon(Icons.notifications_active,color: Colors.grey,)
              ],
            ),
          ),

          Divider(thickness: 1,color: Color(0xff4d4d4d),),
          Container(
            margin: EdgeInsets.all(5),
            child: Row(
              children: const [
                Text("Comments",style: TextStyle(color: Colors.white),),
                Text("    1K",style: TextStyle(color: Colors.grey),),
                Spacer(),
                Icon(Icons.sort,color: Colors.grey,)
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            child: Row(
              children: const [
                CircleAvatar(radius: 13,backgroundColor: Colors.indigoAccent,),
                SizedBox(width: 10,),
                Text("MashaAllah, what a relaxing voice",style: TextStyle(color: Colors.white),)
              ],
            ),
          ),
          Divider(thickness: 5,color: Color(0xff4d4d4d),),

        ],
      ),
    );
  }
}
