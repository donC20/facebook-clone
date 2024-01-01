import 'package:flutter/material.dart';

class FooterLCSButtons extends StatelessWidget {
  final Widget Icon1, Icon2, Icon3;
  final String txt1, txt2, txt3;
  Widget div1 = Divider(
    thickness: 10,
    color: Colors.grey[300],
  );
  FooterLCSButtons(
      {required this.Icon1,
      required this.txt1,
      required this.Icon2,
      required this.Icon3,
      required this.txt2,
      required this.txt3});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(bottom: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              OutlinedButton.icon(
                onPressed: () {},
                icon: Icon1,
                label: Text(
                  txt1,
                  style: TextStyle(
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.normal),
                ),
                borderSide: const BorderSide(
                  color: Colors.white,
                ),
              ),
              OutlinedButton.icon(
                onPressed: () {},
                icon: Icon2,
                label: Text(
                  txt2,
                  style: TextStyle(
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.normal),
                ),
                borderSide: const BorderSide(
                  color: Colors.white,
                ),
              ),
              OutlinedButton.icon(
                onPressed: () {},
                icon: Icon3,
                label: Text(
                  txt3,
                  style: TextStyle(
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.normal),
                ),
                borderSide: const BorderSide(
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
        div1,
      ],
    );
  }
}
