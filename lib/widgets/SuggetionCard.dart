import 'package:facebook/widgets/assets.dart';
import 'package:flutter/material.dart';
import 'package:facebook/widgets/BlueTick.dart';
class SuggetionCard extends StatelessWidget {
  Radius r = Radius.circular(10);
  String name, mutual,img;
  bool verified;
  SuggetionCard(
      {required this.name,
      this.mutual = '',
      required this.img,this.verified=true});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(left: 10, right: 5),
      child: Stack(
        children: [
          SImage(),
          Sbag(),
        ],
      ),
    );
  }

  Widget SImage() {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      height: 200,
      child: ClipRRect(
        child: Image.asset(
          img,
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.only(
          topLeft: r,
          topRight: r,
        ),
      ),
    );
  }

  Widget Sbag() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      top: 190,
      child: Container(
        height: 90,
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.only(bottomLeft: r, bottomRight: r),
        ),
        child: Column(
          children: [
            ListTile(
              title: Row(
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  verified ? BlueTick() : SizedBox(),
                ],
              ),
              subtitle: Text(
                mutual,
              ),
            ),
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      FlatButton.icon(
                        color: Colors.blueAccent.shade700,
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        icon: Icon(
                          Icons.person_add,
                          color: Colors.white,
                        ),
                        label: Text(
                          "Add friend",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(width: 30),
                      FlatButton(
                        minWidth: 102,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        color: Colors.grey.shade300,
                        onPressed: () {},
                        child: Text("Remove"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
