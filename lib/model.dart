import 'package:flutter/material.dart';

class Reel {
  final String postedBy;
  String imgUrl;
  // final String audioTitle;
  final String caption;
  final String totalLikes;
  final String totalComment;
  final bool isLiked;
  final bool isTagged;
  final String taggedUser;

  Reel(
      this.postedBy,
      this.imgUrl,
      //this.audioTitle,
      this.caption,
      this.totalLikes,
      this.totalComment,
      this.isLiked,
      this.isTagged,
      this.taggedUser);
}

List reels = [
  Reel(
      'demo1',
      'https://media.istockphoto.com/id/1393508446/video/selective-focus-on-gavel-hammer.mp4?s=mp4-640x640-is&k=20&c=bSSKAHSiJZ5xTnjLej2WTpHEpWFX46Zq-87EdD8PW48=',
      'Leaf',
      '3.3k',
      '20',
      true,
      true,
      'demo1'),
  Reel(
      'demo2',
      'https://media.istockphoto.com/id/1847249041/video/lady-justice-statue-dolly-shot-vertical-video-for-story-and-reel.mp4?s=mp4-640x640-is&k=20&c=GBzUYowc3OSh75AXxrMMHDHtN3KrSwc4qqdKx6wFQVQ=',
      'Tiger',
      '22.9k',
      '33',
      true,
      false,
      'demo2'),
  Reel(
      'demo3',
      'https://media.istockphoto.com/id/1826572871/video/midsection-of-female-judge-holding-law-scales.mp4?s=mp4-640x640-is&k=20&c=AaGnHfrhZpTn4Un-JrVgfM8nWGQXafedulDj2qkzDv0=',
      'Peacock',
      '2k',
      '3',
      false,
      false,
      'demo3')
];
