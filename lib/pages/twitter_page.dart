import 'package:flutter/material.dart';

class TwitterPage extends StatefulWidget {
  const TwitterPage({super.key});

  @override
  State<TwitterPage> createState() => _TwitterPageState();
}

class _TwitterPageState extends State<TwitterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.account_circle),
          color: Colors.black,
        ),
        flexibleSpace: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: (){
                print("Pressed Search Twitter");
              },
              child: Container(
                width: 250,
                height: 45,
                margin: EdgeInsets.only(top: 40, bottom: 5, left: 60),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[100],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Image(
                        image: AssetImage("assets/images/twitter_icon.png"),
                        fit: BoxFit.cover,
                        width: 20,
                      ),
                    ),
                    Text(
                      "Search Twitter",
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40, bottom: 5),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.auto_awesome),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          _makePost(
            userImage: "assets/images/user_1.jpg",
            userName: "Cleve",
            nameAndTime: "@all_the_sportz • 1h",
            aboutPost: "What's the most obscure hobby you've taken up in the last few months? Mine is making my own perfume. Be glad you don't have to smell it.",
            comment: "4",
            like: "12",
          ),

          _makePost(
            userImage: "assets/images/user4.jpg",
            userName: "Katie O.",
            nameAndTime: "@kay_tee_oh • 1h",
            aboutPost: "Coffee & Plants. best way to start the day",
            postImage: "assets/images/coffee.jpg",
            comment: "5",
            like: "33",
          ),

          _makePost(
            userImage: "assets/images/user_3.jpg",
            userName: "Patel",
            nameAndTime: "@patel_232 • 1h",
            aboutPost: "Summer's here and all I have planned is staying inside and reading books. Is this a dream come true?",
            comment: "3",
            like: "7",
            postImage: "assets/images/book.jpg",
          ),

          _makePost(
            userImage: "assets/images/user_1.jpg",
            userName: "Cleve",
            nameAndTime: "@all_the_sportz • 1h",
            aboutPost: "What's the most obscure hobby you've taken up in the last few months? Mine is making my own perfume. Be glad you don't have to smell it.",
            comment: "8",
            like: "23",
          ),

          _makePost(
            userImage: "assets/images/user4.jpg",
            userName: "Katie O.",
            nameAndTime: "@kay_tee_oh • 1h",
            aboutPost: "What's the most obscure hobby you've taken up in the last few months? Mine is making my own perfume. Be glad you don't have to smell it.",
            comment: "2",
            like: "6",
          ),

          _makePost(
            userImage: "assets/images/user_2.jpg",
            userName: "Cleve",
            nameAndTime: "@dalnyu_674 • 1h",
            aboutPost: "What's the most obscure hobby you've taken up in the last few months? Mine is making my own perfume. Be glad you don't have to smell it.",
            comment: "4",
            like: "12",
          ),
        ],
      ),

    floatingActionButton: FloatingActionButton(
    backgroundColor: Colors.blueAccent,
    onPressed: () {
    },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Icon(
        Icons.add,
      ),
    ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.black),
            label: "Home",

          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.apps_sharp,color: Colors.black),
            label: "Expior",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.workspaces_outlined, color: Colors.black),
            label: "Spaces",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_active_outlined, color: Colors.black),
            label: "Notifications",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.messenger_outline, color: Colors.black),
            label: "Messages",
          ),
        ],
      ),
    );
  }

  Widget _makePost({userImage, userName, nameAndTime, aboutPost, postImage, comment, like}) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16,top: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.orange),
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(userImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 10),
              // color: Colors.red,
              // height:200,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            userName,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 13),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            nameAndTime,
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          )
                        ],
                      ),
                      Icon(Icons.more_horiz,color: Colors.grey,)
                    ],
                  ),
                  SizedBox(height: 5,),

                  Text(aboutPost, style: TextStyle(fontSize: 13),),

                  SizedBox(height: 10,),

                  // #post_image
                  if(postImage != null)
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      image: DecorationImage(
                        image: AssetImage(postImage!),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  // #icons
                  SizedBox(height: 12,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.chat_bubble_outline),
                          Text(comment),
                        ],
                      ),

                      Row(
                        children: [
                          Icon(Icons.autorenew),
                        ],
                      ),

                      Row(
                        children: [
                          Icon(Icons.favorite_border),
                          Text(like),
                        ],
                      ),

                      Row(
                        children: [
                          Icon(Icons.file_upload_outlined),
                        ],
                      ),

                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
