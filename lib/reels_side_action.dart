import 'package:flutter/material.dart';
import 'package:videosample/model.dart';

class ReelSideAction extends StatelessWidget {
  const ReelSideAction({required this.reel, super.key});
  final double _iconSize = 30;
  final Reel reel;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.pink,
      height: 250,
      child: Column(
        children: [
          IconButton(
            onPressed: () {
              reel.isLiked ? Icons.favorite : Icons.favorite_border_outlined;
            },
            icon: Icon(
                reel.isLiked ? Icons.favorite : Icons.favorite_border_outlined),
            iconSize: _iconSize,
            color: reel.isLiked ? Colors.pink : Colors.white,
          ),
          Text(reel.totalLikes),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.chat_bubble_outline),
            iconSize: _iconSize,
          ),
          Text(reel.totalComment),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.send_outlined),
            iconSize: _iconSize,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_horiz),
            iconSize: _iconSize,
          ),
        ],
      ),
    );
  }
}
