import 'package:facebook/widgets/Avatars.dart';
import 'package:flutter/material.dart';
import 'package:facebook/widgets/assets.dart';

class RoomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          createRoom(),
          Avatars(displayAvatar: me,displayStatus: true,),
          Avatars(displayAvatar: kunchako,displayStatus: true,),
          Avatars(displayAvatar: mohanlal,displayStatus: true,),
          Avatars(displayAvatar: sreene,displayStatus: true,),
          Avatars(displayAvatar: romeo,displayStatus: true,),
          Avatars(displayAvatar: nintu,displayStatus: true,),
          Avatars(displayAvatar: me,displayStatus: true,),
          Avatars(displayAvatar: kunchako,displayStatus: true,),

        ],
      ),
    );
  }












  Widget createRoom() {
    return Container(
      padding: EdgeInsets.only(left: 10,right: 10,top: 2,bottom: 2),
      child: OutlineButton.icon(
        shape: StadiumBorder(),
        borderSide: BorderSide(
          color: Colors.blue,
        ),
        onPressed: () {},
        icon: const Icon(
          Icons.video_call_outlined,
          color: Colors.deepPurple,
        ),
        label: const Text(
          "Create \n Room",
          style: TextStyle(color: Colors.lightBlue),
        ),
      ),
    );
  }
}
