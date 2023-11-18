// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 45,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Image.asset("assets/images/insta.png"),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.add_circle),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.favorite),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 8, top: 8, bottom: 8, right: 20),
                        child: Icon(Icons.send),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(children: [
                Divider(),
                TopLocation(),
                Divider(),
                PostItem("assets/images/girl.png", "irem_a", "Kız Kulesi",
                    "assets/images/kızkulesi.jpg"),
                Divider(),
                PostItem("assets/images/foto.jpg", "himmetarda",
                    "İstanbul/Beşiktaş", "assets/images/ortakoy.jpg"),
                Divider(),
                PostItem("assets/images/foto.jpg", "himmetarda",
                    "Çırağan Sarayı", "assets/images/cıragan.jpg"),
                Divider(),
                PostItem("assets/images/man.png", "ahmet_s", "Boğaziçi",
                    "assets/images/bogazici.jpg"),
                Divider(),
              ]),
            )),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                color: Colors.grey,
              )),
              width: double.infinity,
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.home,
                      size: 35,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.search,
                      size: 35,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.add_box,
                      size: 35,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.smart_display,
                      size: 35,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.person,
                      size: 35,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container PostItem(avatar, name, location, content) => Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(avatar),
                        radius: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            location,
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Icon(Icons.more_horiz),
                ],
              ),
            ),
            Image.asset(content),
            LikeBox(),
            CommentBox("ahmtslmovr:",
                "çok güzel foto olmuş harika açı elinize sağlıkk."),
            CommentBox(
                "leomessi:", "OMG this picture amazingg broo. Congrulations.")
          ],
        ),
      );

  Padding LikeBox() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.favorite_border,
                size: 30,
              ),
              SizedBox(
                width: 8,
              ),
              Icon(
                Icons.chat_bubble_outline,
                size: 30,
              ),
            ],
          ),
          Icon(
            Icons.flag_outlined,
            size: 30,
          )
        ],
      ),
    );
  }

  Padding CommentBox(name, comment) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: RichText(
              maxLines: 3,
              text: TextSpan(children: [
                TextSpan(
                    text: name,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black)),
                TextSpan(text: " "),
                TextSpan(
                    text: comment,
                    style: TextStyle(fontSize: 13, color: Colors.grey))
              ]),
            ),
          ),
        ],
      ),
    );
  }

  Widget TopLocation() => Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //TitleItem("Top Locations", "View All"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Row(
                    children: [
                      StoryItem("assets/images/foto.jpg", "Hikayen"),
                      StoryItem("assets/images/man.png", "Ahmet T."),
                      StoryItem("assets/images/girl.png", "İrem S."),
                      StoryItem("assets/images/foto.jpg", "Arda A."),
                      StoryItem("assets/images/man.png", "Ahmet T."),
                      StoryItem("assets/images/girl.png", "İrem S."),
                      StoryItem("assets/images/girl.png", "İrem S."),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      );

  Widget StoryItem(String photo, String name) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(2.5),
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 241, 156, 101),
                  Color.fromARGB(255, 233, 92, 70),
                ]),
                shape: BoxShape.circle),
            child: Container(
              padding: EdgeInsets.all(2),
              decoration:
                  BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              child: CircleAvatar(
                backgroundImage: AssetImage(photo),
                radius: 35,
              ),
            ),
          ),
          Text(
            name,
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
