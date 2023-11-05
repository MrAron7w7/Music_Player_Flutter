import 'package:flutter/material.dart';
import 'package:musicplayer/pages/home_music_page.dart';
import 'package:musicplayer/themes/colors.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music Player',
      theme: ThemeData(
        colorSchemeSeed: background,
      ),
      home: const HomeMusicPage(),
    );
  }
}
