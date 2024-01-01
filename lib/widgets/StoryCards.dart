import 'package:facebook/widgets/Avatars.dart';

import 'package:facebook/widgets/CircularButtons.dart';
import 'package:flutter/material.dart';

class StoryCards extends StatelessWidget {
  final String labelText, story, avatar;
  final bool createStoryStatus;
  StoryCards(
      {required this.labelText,
      required this.story,
      required this.avatar,
      this.createStoryStatus = false});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 150,
          margin: EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(story),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        Positioned(
          left: 10,
          top: 13,
          child: createStoryStatus == true
              ? CircularButtons(
                  buttonIcons: Icons.add,
                  buttonAction: () {},
                  IbColor: Colors.grey.shade300,
                  IColor: Colors.blue,
                )
              : Avatars(
                  displayAvatar: avatar,
                  displayStatus: false,
                ),
        ),
        Positioned(
          bottom: 20,
          left: 40,
          child: Text(
            labelText,
            maxLines: 1,
            softWrap: true,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }
}
