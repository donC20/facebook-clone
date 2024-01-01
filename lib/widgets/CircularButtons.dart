import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CircularButtons extends StatelessWidget {
  final IconData buttonIcons;
  final void Function() buttonAction;
  final Color IbColor,IColor;
  CircularButtons(
      {required this.buttonIcons,
      required this.buttonAction,
       this.IbColor=Colors.grey,this.IColor=Colors.blue});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(7.9),
      decoration: BoxDecoration(
        color: IbColor,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(buttonIcons, color: IColor, size: 25),
        onPressed: buttonAction,
      ),
    );
  }
}
