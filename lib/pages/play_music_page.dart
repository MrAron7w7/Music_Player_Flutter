import 'package:flutter/material.dart';

class PlayMusicPage extends StatefulWidget {
  const PlayMusicPage({super.key});

  @override
  State<PlayMusicPage> createState() => _PlayMusicPageState();
}

class _PlayMusicPageState extends State<PlayMusicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF222831),
      appBar: AppBar(
        title: const Text('Name Song'),
        centerTitle: true,
        backgroundColor: const Color(0XFF222831),
        elevation: 0,
        leading: const Icon(
          Icons.keyboard_arrow_down,
          size: 30,
        ),
      ),
      body: Column(
        children: [
          // Name Song

          // Artis

          // Controllers  share

          // Slider

          // Controller play
        ],
      ),
    );
  }
}
