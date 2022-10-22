import 'package:flutter/material.dart';
import 'package:youtube_ui/videoPage.dart';

class myhome extends StatefulWidget {
  const myhome({Key? key}) : super(key: key);

  @override
  State<myhome> createState() => _myhomeState();
}

class _myhomeState extends State<myhome> {
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.w600);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff383838),
      /*appBar: AppBar(
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
              child: Center(
                child: Icon(Icons.play_arrow,color: Colors.white,),
              ),
            ),
            Text(
              "YouTube",
              style: TextStyle(
                  fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
        actions: [
          Row(
            children: [
              Icon(Icons.ondemand_video_outlined),
              SizedBox(width: 10,),
              Icon(Icons.notifications_outlined),
              SizedBox(width: 10,),
              Icon(Icons.search_outlined),
              SizedBox(width: 10,),
              CircleAvatar(radius: 14,backgroundImage: NetworkImage("https://lh3.googleusercontent.com/a/ALm5wu1BXZEz9UQKXoniSPv9cfY_apLqCM-JvceC6om9lw=s360-p-no"),backgroundColor: Color(0xff3e3e3e),),
              SizedBox(width: 10,),
            ],
          )

        ],
      ),*/
      body: ListView(
          children: [
            Column(
              children: [
                Container(
                    width: (MediaQuery.of(context).size.width),
                    height: 45,
                    color: Color(0xff212121),
                    child: SizedBox(
                        height: 45,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Row(
                              children: [
                                addCategory(50,"All",true),
                                addCategory(100,"Gaming",false),
                                addCategory(60,"Mixes",false),
                                addCategory(100,"Computers",false),
                                addCategory(80,"Music",false),
                                addCategory(120,"Programming",false),
                                addCategory(80,"Gaming",false),
                              ],
                            )
                          ],
                        )
                    )
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>video(img: "https://i.ytimg.com/vi/fELlP2-eKH0/hq720.jpg?sqp=-oaymwEXCNAFEJQDSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLBMkWSkHnQbXyR1cEun8DuDL4CbmQ",)));
                  },
                  child: Hero(
                    tag: 'imageHero',
                    child: addVideo(
                        "https://i.ytimg.com/vi/fELlP2-eKH0/hq720.jpg?sqp=-oaymwEXCNAFEJQDSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLBMkWSkHnQbXyR1cEun8DuDL4CbmQ",
                        "https://yt3.ggpht.com/2_vrxEroLwNSCqdhj25OFXUpp2bK779i6b-kvvl1keJWWI5L6Nkmh_u7yKT85javxU3ZN4pF=s176-c-k-c0x00ffffff-no-rj",
                        "1:28","Mevlan Kurtishi - Luqman\n(12-14) | سورة لقمان","Mevlan Kurtishi","2.4M","6 years"
                    ),
                  ),
                ),

                addVideo(
                    "https://img.youtube.com/vi/i7irUZZg3FQ/0.jpg",
                    "https://yt3.ggpht.com/ytc/AMLnZu_kEO6DQNY3n-hw1-mYfBvEf_oqyShBJ2p07ql-=s176-c-k-c0x00ffffff-no-rj",
                    "10:27","Setup Wars - Episode 313","TechSource","182K","3 weeks"
                ),
                addVideo(
                    "https://img.youtube.com/vi/WfYxrLaqlN8/0.jpg",
                    "https://yt3.ggpht.com/ZeokXdjeXW_6CpcChqvVBEBcHoJ9TAaLTnQj8yT942LLV8afhmUv6zLtqzbNS1uPnernj3SPshA=s176-c-k-c0x00ffffff-no-rj",
                    "13:29","Cracking WiFi WPA2 Handshake","David Bombal","1.1M","1 year"
                ),
                addVideo(
                    "https://img.youtube.com/vi/coVxNAYPzWo/0.jpg",
                    "https://yt3.ggpht.com/ytc/AMLnZu_qOpMK0tGNMCnReaXVp4ZvmNEIXn9eKeBGA_x-wQ=s176-c-k-c0x00ffffff-no-rj",
                    "11:34","I shouldn't have built this.- Hasanabi\n'Leftist PC'","Linus Tech Tips","1.8M","11 months"
                ),
              ],
            ),
          ]
      ),
      /*bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Color(0xff212121),
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.black,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 14, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.white,
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.airplay_outlined,
                  text: 'Shorts',
                ),
                GButton(
                  icon: Icons.add_circle_outline,
                  text: '',
                ),
                GButton(
                  icon: Icons.subscriptions_outlined,
                  text: 'Subscriptions',
                ),
                GButton(
                  icon: Icons.video_collection_outlined,
                  text: 'Library',
                ),
              ],
              selectedIndex: selectedPage,
              onTabChange: (index) {
                setState(() {
                  selectedPage = index;
                });
              },
            ),
          ),
        ),
      ),*/

    );

  }
  Container addCategory(double width,String name,bool active){
    return Container(
      margin: EdgeInsets.only(left: 8,top: 5,bottom: 5),
      width: width,
      height: 30,
      decoration: BoxDecoration(
        color: active ? Color(0xffffffff) : Color(0xff383838),
        border: Border.all(width: 1.5,color: Color(0xff3e3e3e)),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Text(
          name,
          style: TextStyle(
            color: active ? Color(0xff212121) : Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
  Container addVideo(String thumbnail, String avatar, String length,String title,String channelinfo,String views,String uploaded){
    return  Container(
      margin: EdgeInsets.only(top: 5),
      color: Color(0xff212121),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 5),
                width: (MediaQuery.of(context).size.width),
                height: 240,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(thumbnail),
                      fit: BoxFit.cover,
                    )
                ),
              ),
              Positioned(
                  bottom: 10, right: 10,
                  child: Container(
                    width: 45,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Center(
                      child: Text(
                        length,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 8,),
                CircleAvatar(radius: 22,backgroundImage: NetworkImage(avatar),backgroundColor: Color(0xff383838),),
                SizedBox(width: 8,),
                Column(
                  crossAxisAlignment:CrossAxisAlignment.start ,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 16.5,
                      ),
                    ),
                    Text(
                      "$channelinfo . $views views . $uploaded ago",
                      style: const TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Icon(Icons.more_vert,size: 24,color: Colors.white,)
              ],
            ),
          )
        ],
      ),
    );
  }
}

