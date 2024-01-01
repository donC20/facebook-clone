import 'package:facebook/Sections/FooterLCSbuttons.dart';
import 'package:facebook/widgets/Avatars.dart';
import 'package:facebook/widgets/BlueTick.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostSection extends StatelessWidget {
  final String avatar,
      txtname,
      txttime,
      captions,
      post,
      likeCount,
      shareCount,
      commentCount;
  final bool verified;
  Widget div1 = Divider(
    thickness: 1,
    color: Colors.grey[300],
  );
  PostSection(
      {required this.avatar,
      required this.txtname,
      required this.txttime,
      required this.captions,
      required this.post,
      this.verified = true,
      required this.likeCount,
      required this.shareCount,
      required this.commentCount});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        postHeader(),
        caption(),
        imagePosts(),
        footer1(),
        div1,
        FooterLCSButtons(
          txt1: 'Like',
          txt2: 'Comment',
          txt3: 'Share',
          Icon1: Icon(Icons.thumb_up_alt_outlined,color: Colors.grey.shade600,size: 22,),
          Icon2: Icon(Icons.messenger_outline_outlined,color: Colors.grey.shade600,size: 22,),
          Icon3: Icon(Icons.share,color: Colors.grey.shade600,size: 22,),

        ),
      ],
    );
  }

  Widget postHeader() {
    return ListTile(
      leading: Avatars(
        displayAvatar: avatar,
        displayStatus: false,
      ),
      title: Row(
        children: [
          Text(
            txtname,
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: 3,
          ),
          verified ? BlueTick() : SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(txttime),
          SizedBox(
            width: 7,
          ),
          Icon(
            Icons.public_sharp,
            color: Colors.grey.shade600,
            size: 15,
          )
        ],
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.more_horiz,
          color: Colors.grey.shade600,
          size: 25,
        ),
      ),
    );
  }

  Widget caption() {
    return Container(
      padding: EdgeInsets.only(bottom: 6),
      child: Text(
        captions,
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
        ),
      ),
    );
  }

  Widget imagePosts() {
    return Container(
      child: Image.asset(post),

      // height: 450,
      //  decoration: BoxDecoration(
      //    image: DecorationImage(
      //      image: AssetImage(post),
      //      fit: BoxFit.cover,
      //    ),
      //    borderRadius: BorderRadius.circular(2),
      //  ),
    );
  }

  Widget displayText({required String label}) {
    return Text(
      label,
      style: TextStyle(color: Colors.grey.shade600),
    );
  }

  Widget footer1() {
    return Container(
      height: 40,
      padding: const EdgeInsets.only(right: 10, left: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  width: 19,
                  height: 19,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                    size: 12,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                displayText(label: likeCount),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                displayText(label: commentCount + " comments"),
                SizedBox(
                  width: 10,
                ),
                displayText(label: shareCount + " shares"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
