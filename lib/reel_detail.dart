import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:videosample/model.dart';

class ReelDetail extends StatefulWidget {
  const ReelDetail({required this.reel, super.key});
  final Reel reel;

  @override
  State<ReelDetail> createState() => _ReelDetailState();
}

class _ReelDetailState extends State<ReelDetail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTile(
            title: Text(
              widget.reel.postedBy,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w500),
            ),
            leading: const CircleAvatar(
              backgroundColor: Colors.black,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: ExpandableText(
              'demo text ddbhbdf bfqfbh hbsfgeq iuufgqef ehfhf hdqgfbfg hcadgf dhbfgh dgfhf kfdgf hdfgdf dfgui',
              expandText: 'more',
              collapseText: 'less',
              collapseOnTextTap: true,
              maxLines: 1,
              linkColor: Colors.grey,
            ),
          ),
          const ListTile(
              title: Text(
                'Music tittle-original music',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              ),
              leading: Icon(Icons.graphic_eq_outlined)),
        ],
      ),
    );
  }
}
