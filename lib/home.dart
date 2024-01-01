import 'package:facebook/Sections/HeaderbtnSection.dart';
import 'package:facebook/Sections/MainHeader.dart';
import 'package:facebook/Sections/PostSection.dart';
import 'package:facebook/Sections/RoomSection.dart';
import 'package:facebook/Sections/StatusSection.dart';
import 'package:facebook/Sections/StorySections.dart';
import 'package:facebook/Sections/Suggestions.dart';
import 'package:facebook/widgets/CircularButtons.dart';
import 'package:facebook/widgets/assets.dart';
import "package:flutter/material.dart";

class Home extends StatelessWidget {
  Widget div2 = Divider(
    thickness: 10,
    color: Colors.grey[300],
  );
  Widget div1 = const Divider(
    thickness: 0.2,
    color: Colors.grey,
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          actions: [
            CircularButtons(
              buttonIcons: Icons.search,
              buttonAction: () {
                print("Search pressed!''");
              },
              IbColor: Colors.grey.shade300,
              IColor: Colors.black,
            ),
            CircularButtons(
              buttonIcons: Icons.chat,
              IbColor: Colors.grey.shade300,
              IColor: Colors.black,
              buttonAction: () {
                print("Chat pressed!''");
              },
            ),
          ],
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Text(
            "facebook",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            MainHeader(),
            div1,
            StatusSection(),
            div1,
            HeaderbtnSection(),
            div2,
            RoomSection(),
            div2,
            StroySections(),
            div2,
             PostSection(
               avatar: mohanlal,
               txtname: "Mohanlal",
               txttime: "9 h",
               captions: "Hello nature!!",
               post: img2,
               likeCount: "2.1m",
               shareCount: "10.7k",
               commentCount: "200k",
             ),
            PostSection(
              avatar: mammoka,
              txtname: "Mamooty",
              txttime: "12 h",
              captions: "#Good vibes only",
              post: img1,
              likeCount: "5.1m",
              shareCount: "100.7k",
              commentCount: "250k",
            ),
            PostSection(
              avatar: me,
              txtname: "Don Benny",
              txttime: "5 h",
              captions: "#Lets Defeat",
              post: img3,
              likeCount: "3m",
              shareCount: "15.7k",
              commentCount: "25k",
              verified: false,
            ),
            PostSection(
              avatar: kunchako,
              txtname: "Kunchaks",
              txttime: "2 h",
              captions: "#Pets day!",
              post: img4,
              likeCount: "4m",
              shareCount: "10.7k",
              commentCount: "60k",
            ),
            //------------------Suggetion section------------
            Suggestions(),
            div2,
            PostSection(
              avatar: romeo,
              txtname: "Romeo Roshan",
              txttime: "2 h",
              captions: "",
              post: img6,
              likeCount: "10m",
              shareCount: "110.7k",
              commentCount: "20k",
              verified: false,
            ),

            PostSection(
              avatar: sreene,
              txtname: "Sreenivasan",
              txttime: "22 h",
              captions: "",
              post: img7,
              likeCount: "54m",
              shareCount: "1m",
              commentCount: "350k",
            ),
            PostSection(
              avatar: nintu,
              txtname: "Nintu Punnoose",
              txttime: "7 h",
              captions: "",
              post: img8,
              likeCount: "61m",
              shareCount: "1.5m",
              commentCount: "450k",
            verified: true,
            ),
          ],
        ),
      ),
    );
  }
}
