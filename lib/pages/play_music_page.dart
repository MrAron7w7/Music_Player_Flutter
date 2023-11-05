import 'package:flutter/material.dart';
import 'package:musicplayer/themes/colors.dart';
import 'package:musicplayer/widgets/my_icon.dart';

class PlayMusicPage extends StatefulWidget {
  const PlayMusicPage({super.key});

  @override
  State<PlayMusicPage> createState() => _PlayMusicPageState();
}

class _PlayMusicPageState extends State<PlayMusicPage> {
  bool isFavorite = false;
  bool isRepeat = false;
  bool isShare = false;
  bool isMenu = false;
  bool isPlaying = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: background,
        elevation: 0,
        leading: MyIcon(
          onPressed: () {},
          icon: const Icon(
            Icons.keyboard_arrow_down,
            size: 30,
          ),
        ),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              // Image of song
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  child: Image.network(
                    'https://i.scdn.co/image/ab67616d0000b2733119f490f02fcee6514e8604',
                    height: 300,
                    width: 300,
                  ),
                ),
              ),
              const Spacer(),
              // Name and artis of song
              Container(
                child: const Column(
                  children: [
                    // Name song
                    Text(
                      'PayPhone',
                      style: TextStyle(
                        color: white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // Name of artis
                    Text(
                      'Maroon 5 ',
                      style: TextStyle(
                        color: Colors.white38,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              // Slider
              Slider(
                activeColor: primary,
                inactiveColor: white,
                value: 90,
                onChanged: (double) {},
                max: 100,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '0:00',
                    style: TextStyle(
                      color: white,
                    ),
                  ),
                  Text(
                    '3:35',
                    style: TextStyle(
                      color: white,
                    ),
                  ),
                ],
              ),
              const Spacer(
                flex: 1,
              ),
              // Controllers
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyIcon(
                      icon: const Icon(
                        Icons.skip_previous_rounded,
                        size: 60,
                        color: primary,
                      ),
                      onPressed: () {},
                    ),
                    const SizedBox(width: 10),
                    MyIcon(
                      icon: Icon(
                        isPlaying
                            ? Icons.pause_circle
                            : Icons.play_circle_fill_rounded,
                        size: 80,
                        color: primary,
                      ),
                      onPressed: () {
                        setState(() {
                          isPlaying = !isPlaying;
                        });
                      },
                    ),
                    const SizedBox(width: 10),
                    MyIcon(
                      icon: const Icon(
                        Icons.skip_next_rounded,
                        size: 60,
                        color: primary,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),

              const Spacer(),

              // Section
              Container(
                padding: const EdgeInsets.only(top: 15, bottom: 5),
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      width: 1.5,
                      color: Colors.white24,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MyIcon(
                      onPressed: () {
                        setState(() {
                          isFavorite = !isFavorite;
                        });
                      },
                      icon: Icon(
                        isFavorite
                            ? Icons.favorite
                            : Icons.favorite_border_outlined,
                        color: isFavorite ? primary : Colors.white24,
                        size: 35,
                      ),
                    ),
                    MyIcon(
                      onPressed: () {
                        setState(() {
                          isRepeat = !isRepeat;
                        });
                      },
                      icon: Icon(
                        Icons.repeat,
                        color: isRepeat ? primary : Colors.white24,
                        size: 35,
                      ),
                    ),
                    MyIcon(
                      onPressed: () {
                        setState(() {
                          isShare = !isShare;
                        });
                      },
                      icon: Icon(
                        Icons.ios_share_outlined,
                        color: isShare ? primary : Colors.white24,
                        size: 35,
                      ),
                    ),
                    MyIcon(
                      onPressed: () {
                        setState(() {
                          isMenu = !isMenu;
                        });
                      },
                      icon: Icon(
                        Icons.more_vert_rounded,
                        color: isMenu ? primary : Colors.white24,
                        size: 35,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
