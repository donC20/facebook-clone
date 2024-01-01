import 'package:facebook/widgets/SuggetionCard.dart';
import 'package:facebook/widgets/assets.dart';
import 'package:flutter/material.dart';

class Suggestions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 424,
      child: Column(
        children: [
          const ListTile(
            leading: Text(
              "People you may know",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: Icon(Icons.more_horiz),
          ),
          Container(
            height: 320,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SuggetionCard(
                  name: "Nivin Pauly",
                  mutual: "21 Mutual friends",
                  img: nivin,
                ),
                SuggetionCard(
                  name: "Dileep",
                  mutual: "23 Mutual friends",
                  img: dileep,
                ),
                SuggetionCard(
                  name: "Manju Warrior",
                  mutual: "10 Mutual friends",
                  img: manju,
                ),
                SuggetionCard(
                  name: "Depika Padukone",
                  mutual: "5 Mutual friends",
                  img: depika,
                ),
                SuggetionCard(
                  name: "Mark Zukerberg",
                  mutual: "12 Mutual friends",
                  img: zuker,
                ),
                SuggetionCard(
                  name: "Elon Musk",
                  mutual: "110 Mutual friends",
                  img: musk,
                ),
              ],
            ),
          ),
          FlatButton(
            onPressed: () {},
            child: Text(
              "See all",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
            ),
          ),
        ],
      ),
    );
  }
}
