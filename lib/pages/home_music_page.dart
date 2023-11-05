import 'package:flutter/material.dart';
import 'package:musicplayer/themes/colors.dart';
import 'package:musicplayer/widgets/my_icon.dart';
import 'package:on_audio_query/on_audio_query.dart';

class HomeMusicPage extends StatefulWidget {
  const HomeMusicPage({super.key});

  @override
  State<HomeMusicPage> createState() => _HomeMusicPageState();
}

class _HomeMusicPageState extends State<HomeMusicPage> {
  // Iniciando variables
  final _audioQuery = OnAudioQuery();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: background,
        title: const Text('Music Player'),
        actions: [
          MyIcon(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          const SizedBox(width: 20),
        ],
      ),
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          return const ListTile(
            leading: Icon(
              Icons.music_note,
              color: primary,
            ),
            title: Text(
              'Song Name',
              style: TextStyle(
                color: white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            subtitle: Text(
              'Artist Name',
              style: TextStyle(
                color: white,
                overflow: TextOverflow.ellipsis,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Icon(
              Icons.more_horiz,
              color: primary,
            ),
          );
        },
      ),
    );
  }
}
