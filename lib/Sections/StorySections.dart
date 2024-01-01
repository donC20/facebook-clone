import 'package:facebook/widgets/StoryCards.dart';
import 'package:facebook/widgets/assets.dart';
import 'package:flutter/material.dart';

class StroySections extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCards(
            avatar: mammoka,
            labelText: 'Add to story',
            story: mammoka,
            createStoryStatus: true,
          ),
          StoryCards(
            avatar: me,
            labelText: 'Don Benny',
            story: img1,
            createStoryStatus: false,
          ),
          StoryCards(
            avatar: kunchako,
            labelText: 'Kunchako Boban',
            story: img2,
            createStoryStatus: false,
          ),
          StoryCards(
            avatar: mohanlal,
            labelText: 'Mohanlal',
            story: img3,
            createStoryStatus: false,
          ),
          StoryCards(
            avatar: nintu,
            labelText: 'Nintumon',
            story:img4 ,
            createStoryStatus: false,
          ),
          StoryCards(
            avatar: romeo,
            labelText: 'Romeo Roshan',
            story: img5,
            createStoryStatus: false,
          ),
          StoryCards(
            avatar: sreene,
            labelText: 'Sreenevasan',
            story: img6,
            createStoryStatus: false,
          ),
        ],
      ),
    );
  }
}
