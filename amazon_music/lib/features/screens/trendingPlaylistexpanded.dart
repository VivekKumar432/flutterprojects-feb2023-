import 'package:amazon_music/features/screens/musicFinder.dart';
import 'package:amazon_music/shared/widgets/playlistListTile.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../shared/widgets/playlistIconButtons.dart';

class TrendingPlaylist extends StatefulWidget {
  const TrendingPlaylist({super.key});

  @override
  State<TrendingPlaylist> createState() => _TrendingPlaylistState();
}

class _TrendingPlaylistState extends State<TrendingPlaylist> {
  _deviceDimensions(context) {
    Size size = MediaQuery.of(context).size;
    return size;
  }

  Container trendingPlaylistImage(context) {
    return Container(
      height: (_deviceDimensions(context)).height / 5,
      width: (_deviceDimensions(context)).width / 1.8,
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 82, 82, 82),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15))),
      child: const ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15), topRight: Radius.circular(15)),
        child: Image(
          fit: BoxFit.fill,
          image: AssetImage("assets/trendingPlaylistImage.jpg"),
        ),
      ),
    );
  }

  List list = [
    const Text(""),
    const MyMusicFinder(),
    const Text(""),
    const Text(""),
  ];
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      Navigator.push(context, MaterialPageRoute(builder: (_) => list[index]));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          scrolledUnderElevation: 1,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back_ios)),
          actions: <Widget>[
            TextButton(
                onPressed: () {},
                child: Row(
                  children: const [
                    Icon(
                      Icons.filter_alt_outlined,
                      color: Colors.white,
                      size: 20,
                    ),
                    AutoSizeText(
                      "Filter",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                )
                //
                ),
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Theme.of(context).primaryColor,
              Colors.black,
            ],
          )),
          width: (_deviceDimensions(context)).width,
          height: (_deviceDimensions(context)).height,
          child: SafeArea(
            child: Column(
              children: [
                trendingPlaylistImage(context),
                const SizedBox(
                  height: 10,
                ),
                const AutoSizeText(
                  "PLAYLIST",
                  style: TextStyle(
                      color: Color.fromARGB(255, 1, 245, 78),
                      fontWeight: FontWeight.bold),
                ),
                const AutoSizeText(
                  "50 Most Played:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                const AutoSizeText(
                  "India",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                const SizedBox(
                  height: 5,
                ),
                const AutoSizeText(
                  "Curated by Amazon's Music Experts",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
                ),
                const SizedBox(
                  height: 5,
                ),
                const AutoSizeText(
                  "The most listened to songs in India, updated every Friday.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
                ),
                const SizedBox(
                  height: 5,
                ),
                const AutoSizeText(
                  "50 SONGS . 3 HRS 11 MINS",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Spacer(),
                    PlaylistIconButtons(
                      Icons.play_arrow,
                    ),
                    PlaylistIconButtons(
                      Icons.shuffle,
                    ),
                    PlaylistIconButtons(
                      Icons.add,
                    ),
                    PlaylistIconButtons(
                      Icons.download_outlined,
                    ),
                    PlaylistIconButtons(
                      Icons.more_vert,
                    ),
                    const Spacer(),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                PlaylistListTile(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
