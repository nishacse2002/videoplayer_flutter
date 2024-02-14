import 'package:flutter/material.dart';
import 'package:videosample/content_screen.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
          child: const Stack(
        children: [
          ContentScreen(),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Law Video',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                ),
                Icon(Icons.camera_alt_outlined),
              ],
            ),
          )
        ],
      )),
    ));
  }
}
