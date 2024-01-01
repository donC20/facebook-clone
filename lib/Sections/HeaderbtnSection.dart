import 'package:flutter/material.dart';
class HeaderbtnSection extends StatelessWidget {
  Widget verticalBar=VerticalDivider(
    thickness: 1,
    color: Colors.grey[300],
  );
  Widget tabIcons(
      {required Color setC,
      required IconData setI,
      required String btntxt,
      required void Function() buttonAction}) {
    return FlatButton.icon(
      shape:  OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey.shade300, width: 1),
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      onPressed: buttonAction,
      icon: Icon(
        setI,
        color: setC,
        size: 22,
      ),
      label: Text(btntxt),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.all(5),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          tabIcons(
              setC: Colors.redAccent,
              setI: Icons.ondemand_video,
              btntxt: "Reel",
              buttonAction: () {}),
          verticalBar,
          tabIcons(
              setC: Colors.deepPurple,
              setI: Icons.video_call_outlined,
              btntxt: "Room",
              buttonAction: () {}),
          verticalBar,
          tabIcons(
              setC: Colors.deepPurple,
              setI: Icons.people_rounded,
              btntxt: "Community",
              buttonAction: () {}),
          verticalBar,
          tabIcons(
              setC: Colors.red,
              setI: Icons.video_call,
              btntxt: "Live",
              buttonAction: () {}),
          verticalBar,
        ],
      ),
    );
  }
}
