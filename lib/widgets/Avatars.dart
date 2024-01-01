import 'package:flutter/material.dart';

class Avatars extends StatelessWidget {
  final String displayAvatar;
  final bool displayStatus;
  final double  Width,Height;
  Avatars({required this.displayAvatar, required this.displayStatus, this.Width=50, this.Height=50});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.only(
            left: 5,
            right: 4,
          ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                displayAvatar,
                width: Width,
                height: Height,
                fit: BoxFit.cover,
              ),

            ),
        ),
        displayStatus== true ? Positioned(
          bottom: 5,
          right: 5,
          child: Container(
            width: 15,
            height: 15,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.greenAccent,
              border: Border.all(color: Colors.white, width: 2),
            ),
          ),
        ) : SizedBox(),
      ],
    );
  }
}
