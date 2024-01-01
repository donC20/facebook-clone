import 'dart:ui';
import 'package:facebook/widgets/Avatars.dart';
import 'package:flutter/material.dart';
import 'package:facebook/widgets/assets.dart';

class StatusSection extends StatelessWidget {
   OutlineInputBorder borderStyle1(){
     return const OutlineInputBorder(
       borderSide: BorderSide(color: Colors.grey, width: 0.3),
       borderRadius: BorderRadius.all(
         Radius.circular(30),
       ),
     );
   }
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avatars(
        displayAvatar: mammoka,
        displayStatus: false,
      ),
      title:  TextField(
        decoration: InputDecoration(
          hintText: "Whats on your mind?",
          hintStyle: TextStyle(color: Colors.black),
          enabledBorder: borderStyle1(),
          focusedBorder: borderStyle1(),
        ),
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.photo_library,
          color: Colors.green,
        ),
      ),
    );
  }
}
