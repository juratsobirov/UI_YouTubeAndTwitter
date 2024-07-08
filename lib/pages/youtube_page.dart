import 'package:flutter/material.dart';

class YouTubePage extends StatefulWidget {
  const YouTubePage({super.key});

  @override
  State<YouTubePage> createState() => _YouTubePageState();
}

class _YouTubePageState extends State<YouTubePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        flexibleSpace: Container(
          padding: EdgeInsets.only(left: 10, right: 15, top: 30),
          width: MediaQuery.of(context).size.width,
          // color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                // mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image(
                    image: AssetImage("assets/images/youtube_icon.png"),
                    width: 35,
                    height: 55,
                  ),
                  Text(
                    "YouTube",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Oswald"),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.cast,
                    color: Colors.white,
                    size: 23,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(Icons.notifications_none_outlined,
                      color: Colors.white, size: 23),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(Icons.search, color: Colors.white, size: 23),
                ],
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Divider(),

            // #textList
            Container(
              padding: EdgeInsets.all(10),
              height: 50,
              // color: Colors.red,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  contentList(
                    textList: "All",
                  ),
                  contentList(
                    textList: "Today",
                  ),
                  contentList(
                    textList: "Videos",
                  ),
                  contentList(
                    textList: "Shorts",
                  ),
                  contentList(
                    textList: "Live",
                  ),
                  contentList(
                    textList: "Music",
                  ),
                  contentList(
                    textList: "Shopping",
                  ),
                  contentList(
                    textList: "Reklama",
                  ),
                  contentList(
                    textList: "New to you",
                  ),
                ],
              ),
            ),

            makeFeed(
              imageVideo: "assets/images/video_image.jpg",
              minuteVideo: "29:13",
              channelImage: "assets/images/channel_image1.jpg",
              titleVideo: "Aнгрен тогларини бориб кўрамиз | Бориб кўрамиз",
              channelNameAndtimePosted: "UZBEK TV • 1 views • 30 seconds ago" ,
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // margin: EdgeInsets.only(top: 5, bottom: 2,),
                  padding: EdgeInsets.only(left: 18),
                  height: 85,
                  width: 115,
                  child: Image(
                    image: AssetImage("assets/images/shorts1_icon.jpg"),
                  ),
                ),
              ],
            ),

            Container(
              padding: EdgeInsets.only(left: 10),
              height: 280,
              child: ListView(
                shrinkWrap: true,
                // physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  makeShorts(
                    shortsImage: "assets/images/short.jpg",
                    shortsTitle:
                    "Subyektiv Yaponia qarimoqda😯 #subyektiv #shorts #video #uzb #uzbek",
                    views: "24K views",
                  ),
                  makeShorts(
                    shortsImage: "assets/images/short1.jpg",
                    shortsTitle:
                        "Giant waves and ships at the North Sea #northsea #ship #waves",
                    views: "6.9M views",
                  ),
                  makeShorts(
                    shortsImage: "assets/images/short2.jpg",
                    shortsTitle: "G'aybulla Tursunov - Janona",
                    views: "1.6M views",
                  ),
                  makeShorts(
                    shortsImage: "assets/images/short3.jpg",
                    shortsTitle:
                        "Survival skills: A great idea with duct tape #survival #lifehacks #camping",
                    views: "51M views",
                  ),
                  makeShorts(
                    shortsImage: "assets/images/short4.jpg",
                    shortsTitle: "Incredible magic 🤯✨",
                    views: "13M views",
                  ),
                ],
              ),
            ),

            makeFeed(
              imageVideo: "assets/images/video_image2.jpg",
              minuteVideo: "20:11",
              channelImage: "assets/images/channel_image2.jpg",
              titleVideo:
                  "Bir eshak, bir kampir, bir shoh haqidagi qissa... | @AbdukarimMirzayev2002 #abdukarimmirzayev",
              channelNameAndtimePosted: "Abdukarim Mirzayev • 764K views • 6 months ago",
            ),

            makeFeed(
              imageVideo: "assets/images/video_image3.jpg",
              minuteVideo: "5:59",
              channelImage: "assets/images/channel_image3.jpg",
              titleVideo:
                  "Britaniyada saylov: huquqchi ritsar bosh vazir bo‘ldi",
              channelNameAndtimePosted: "KunUZ • 3 577 views • 1 hours ago",
            ),

            makeFeed(
              imageVideo: "assets/images/video_image4.jpg",
              minuteVideo: "16:09",
              channelImage: "assets/images/channel_image4.jpg",
              titleVideo:
                  "FIRIBGARLAR - ALLAQACHON TELEFONINGIZ ICHIDA | 2-qism | Timur Alixonov",
              channelNameAndtimePosted: "Timur Alixanov • 65K views • 3 day ago",
            ),

            makeFeed(
              imageVideo: "assets/images/video_image5.jpg",
              minuteVideo: "26:06",
              channelImage: "assets/images/channel_image5.jpg",
              titleVideo:
                  "New Yorkda Elektrni Qanday Qilib Tejashadi? Bu O’zbekistonda ham Bormi????????",
              channelNameAndtimePosted: "MrOtabekTV • 134K views • 1 year ago",
            ),

            makeFeed(
              imageVideo: "assets/images/video_image6.jpg",
              minuteVideo: "18:56",
              channelImage: "assets/images/channel_image6.jpg",
              titleVideo:
                  "سعود بن خميس تحدي الصوت مع ليمار || يغنو نفس الاغنية اسمع وحكم بنفسك || #Saud_Bin_Khamis",
              channelNameAndtimePosted: "Saud Bin Khamis • 336K views • 1 year ago",
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type:BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        // showSelectedLabels:false,
        // backgroundColor: Colors.grey[900],
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        selectedFontSize:11,
        unselectedFontSize:11,
        backgroundColor: Colors.black,
        unselectedLabelStyle: TextStyle(color: Colors.white),
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        selectedLabelStyle: TextStyle(color: Colors.white),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
                color: Colors.white,
                size: 22,
              ),
              label: "Home",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_library, color: Colors.white, size: 22),
              label: "Shorts",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_circle_outline,
                color: Colors.white,
                size: 35,
              ),
              label: "",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.subscriptions, color: Colors.white, size: 22),
              label: "Subscriptions",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
                color: Colors.white,
                size: 22,
              ),
              label: "You",

              backgroundColor: Colors.black),
        ],
      ),
    );
  }

  Widget contentList({textList}) {
    return GestureDetector(
      onTap: (){
        print("Content List button pressed");
      },

      child: Container(
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.only(left: 5, right: 5),
        decoration: BoxDecoration(
          color: Colors.grey[850],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            textList,
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
        ),
      ),
    );
  }

  Widget makeFeed(
      {imageVideo,
      minuteVideo,
      channelImage,
      titleVideo,
      channelNameAndtimePosted}) {
    return Container(
      margin: EdgeInsets.only(top: 5, bottom: 10),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            height: 220,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageVideo),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: 50,
                  padding: EdgeInsets.all(2),
                  // margin: EdgeInsets.only(right: 3),
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      minuteVideo,
                      style: TextStyle(color: Colors.white, fontSize: 9),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 10,
                ),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(channelImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(
                    left: 10,
                    right: 15,
                    top: 12,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                              child: Text(
                            titleVideo,
                            style: TextStyle(color: Colors.white, fontSize: 12),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          )),
                          Icon(
                            Icons.more_vert,
                            color: Colors.white,
                            size: 18,
                          ),
                        ],
                      ),
                      Text(
                        channelNameAndtimePosted,
                        style: TextStyle(color: Colors.grey[500], fontSize: 10),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }

  Widget makeShorts({shortsImage, shortsTitle, views}) {
    return Container(
      padding: EdgeInsets.only(left: 10, bottom: 6, right: 2, top: 10),
      margin: EdgeInsets.only(left: 5, right: 5, bottom: 10),
      width: 160,
      // height:200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(shortsImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Icon(
            Icons.more_vert,
            size: 21,
            color: Colors.white,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                shortsTitle,
                style: TextStyle(color: Colors.white, fontSize: 12),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                views,
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
