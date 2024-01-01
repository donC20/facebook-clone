import 'package:flutter/material.dart';

class MainHeader extends StatelessWidget {
  Widget headIcon({
    required IconData meIcon,
  }) {
    return IconButton(
      onPressed: () {},
      icon: Icon(
        meIcon,
        color: Colors.grey.shade600,
        size: 30,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          headIcon(meIcon: Icons.home_outlined),
          headIcon(meIcon: Icons.ondemand_video),
          headIcon(meIcon: Icons.people_outline),
          headIcon(meIcon: Icons.account_circle_outlined),
          headIcon(meIcon: Icons.notifications),
          headIcon(meIcon: Icons.menu),
        ],
      ),
    );
  }
}
