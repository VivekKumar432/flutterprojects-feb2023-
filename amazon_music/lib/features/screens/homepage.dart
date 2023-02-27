import 'package:amazon_music/features/screens/myPodcasts.dart';
import 'package:amazon_music/features/screens/trendingPlaylistexpanded.dart';
import 'package:amazon_music/shared/constants/deviceDimensions.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../shared/constants/dialogue.dart';

class MyHomepage extends StatefulWidget {
  const MyHomepage({super.key});

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  _getText(String message, double fontsize, FontWeight fontWeight) {
    return AutoSizeText(
      message,
      maxLines: 1,
      style: TextStyle(
          fontFamily: "Ember",
          //color: fontColor,
          fontSize: fontsize,
          fontWeight: fontWeight),
    );
  }

  final songTitles = [
    "Chaiyya Chaiyya",
    "Kabhi Kabhie Mere Dil Mein",
    "Chura Ke Dil Mera",
    "Mere Sapno Ki Rani",
    "Kajra Re",
    "Khaike Paan Banaras Wala",
    "Yeh Dosti",
    "Mere Haath Mein",
    "Pee Loon",
    "Jai Ho",
    "Tum Hi Ho",
    "Jeene Ke Hain Chaar Din",
    "Tere Bina",
    "Tere Bina Zindagi Se",
    "Tum Se Hi",
    "Tere Bina Jiya Jaye Na",
    "Tum Paas Aaye",
    "Mere Khwabon Mein Jo Aaye",
    "Dard-E-Disco",
    "Aaj Ki Raat",
    "Kal Ho Na Ho",
    "Kuch Kuch Hota Hai",
    "Tere Liye",
    "Lag Ja Gale",
    "Kabhi Alvida Naa Kehna",
    "Kabhi Jo Baadal Barse",
    "Kabhi Khushi Kabhie Gham",
    "Ek Ladki Ko Dekha To Aisa Laga",
    "Hawa Hawai",
    "Dil To Pagal Hai",
    "Tum Jo Aaye",
    "Ae Dil Hai Mushkil",
    "Agar Tum Saath Ho",
    "Aisa Des Hai Mera",
    "Chand Sifarish",
    "Ghoomar",
    "Jiya Jale",
    "Kalank Title Track",
    "Kehna Hi Kya",
    "Kuch Din",
    "Kabhi Yaadon Mein",
    "Kyon",
    "Luka Chuppi",
    "Mann Bharya",
    "Mere Rashke Qamar",
    "Nashe Si Chadh Gayi",
    "Pee Loon Ishq Sufiyana",
    "Phir Bhi Tumko Chaahunga",
    "Sajda",
    "Tere Bina Zindagi Se",
    "Tere Bin",
    "Tum Hi Aana",
    "Tum Mile"
  ];

  final subtitles = [
    "Sukhwinder Singh, Sapna Awasthi",
  ];

  final icons = [
    Icons.add,
    Icons.more_horiz,
  ];

  ScrollController scrollController = ScrollController();

  final albumCovers = [
    "assets/album2.jpeg",
    "assets/album3.jpeg",
    "assets/album6.jpg",
    "assets/album4.jpg",
    "assets/album8.jpeg",
    "assets/album7.jpeg",
    "assets/album2.jpeg",
    "assets/album3.jpeg",
    "assets/album6.jpg",
    "assets/album4.jpg",
    "assets/album8.jpeg",
    "assets/album7.jpeg",
    "assets/album2.jpeg",
  ];

  _get(context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 3.6,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          controller: scrollController,
          itemCount: albumCovers.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                // Navigator.pushNamed(context, "/fourth");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const TrendingPlaylist()));
              },
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  width: MediaQuery.of(context).size.width / 2.5,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                            child: Image(image: AssetImage(albumCovers[index])),
                          ),
                          Positioned(
                            bottom: MediaQuery.of(context).size.height / 20000,
                            child: Container(
                              width: MediaQuery.of(context).size.width / 2.5,
                              height: MediaQuery.of(context).size.width / 7,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10)),
                                color: Color.fromARGB(222, 33, 149, 243),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    _getText("50", 40, FontWeight.bold),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        _getText(
                                            "Most Played", 14, FontWeight.bold),
                                        _getText("India", 16, FontWeight.bold),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      _getText("50 Most Played: India", 17, FontWeight.normal),
                      _getText(
                        "Sachin-Jigar, Arijit Singh",
                        15,
                        FontWeight.normal,
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }

  // void choiceAction(String choice) {
  //   if (choice == Constants.FirstItem) {
  //     print('I First Item');
  //   } else if (choice == Constants.SecondItem) {
  //     print('I Second Item');
  //   } else if (choice == Constants.ThirdItem) {
  //     print('I Third Item');
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: Theme.of(context).iconTheme,
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
        actions: [
          SizedBox(
            width: DeviceDimensions.deviceHeight(context) / 80,
          ),
          Image(
            image: const AssetImage("assets/notifications.png"),
            color: Theme.of(context).iconTheme.color,
            width: DeviceDimensions.deviceHeight(context) / 30,
          ),
          const Spacer(),
          SizedBox(
              width: 100,
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const TrendingPlaylist()));
                  },
                  child: chip("MUSIC"))),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Podcasts()));
            },
            child: chip("PODCASTS"),
          ),
          const Spacer(),
          PopupMenuButton<Widget>(
            position: PopupMenuPosition.under,
            icon: Image(
              image: const AssetImage("assets/settings.png"),
              color: Theme.of(context).iconTheme.color,
              height: DeviceDimensions.deviceHeight(context) / 30,
            ),
            color: const Color.fromARGB(185, 57, 56, 56),
            itemBuilder: (BuildContext context) {
              return Constants.choice.map((
                Widget choice,
              ) {
                return PopupMenuItem<Widget>(
                  value: choice,
                  child: choice,
                );
              }).toList();
            },
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      //backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Container(
          color: Theme.of(context).primaryColor,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 8,
              right: 8,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      _getText("Trending Playlists", 22, FontWeight.bold),
                      const Spacer(),
                      const Chip(
                        padding: EdgeInsets.all(5),
                        label: AutoSizeText(
                          "SEE MORE",
                          style: TextStyle(
                            fontFamily: "Ember",
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        backgroundColor: Color.fromARGB(255, 59, 57, 57),
                      )
                    ],
                  ),
                  _get(this.context),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      _getText("Start a Podcast Habit", 22, FontWeight.bold),
                      const Spacer(),
                      const Chip(
                        padding: EdgeInsets.all(5),
                        label: Text(
                          "SEE MORE",
                          style: TextStyle(
                            fontFamily: "Ember",
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        backgroundColor: Color.fromARGB(255, 59, 57, 57),
                      )
                    ],
                  ),
                  _get(this.context),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      _getText("Shades of love", 22, FontWeight.bold),
                      const Spacer(),
                      const Chip(
                        padding: EdgeInsets.all(5),
                        label: Text(
                          "SEE MORE",
                          style: TextStyle(
                            fontFamily: "Ember",
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        backgroundColor: Color.fromARGB(255, 59, 57, 57),
                      )
                    ],
                  ),
                  _get(this.context),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      _getText("Shades of love", 22, FontWeight.bold),
                      const Spacer(),
                      const Chip(
                        padding: EdgeInsets.all(5),
                        label: Text(
                          "SEE MORE",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        backgroundColor: Color.fromARGB(255, 59, 57, 57),
                      )
                    ],
                  ),
                  _get(this.context),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      _getText("Shades of love", 22, FontWeight.bold),
                      const Spacer(),
                      const Chip(
                        padding: EdgeInsets.all(5),
                        label: Text(
                          "SEE MORE",
                          style: TextStyle(
                            fontFamily: "Ember",
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        backgroundColor: Color.fromARGB(255, 59, 57, 57),
                      )
                    ],
                  ),
                  _get(this.context),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      _getText("Shades of love", 22, FontWeight.bold),
                      const Spacer(),
                      const Chip(
                        padding: EdgeInsets.all(5),
                        label: Text(
                          "SEE MORE",
                          style: TextStyle(
                            fontFamily: "Ember",
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        backgroundColor: Color.fromARGB(255, 59, 57, 57),
                      )
                    ],
                  ),
                  _get(this.context),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      _getText("Shades of love", 22, FontWeight.bold),
                      const Spacer(),
                      const Chip(
                        padding: EdgeInsets.all(5),
                        label: Text(
                          "SEE MORE",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        backgroundColor: Color.fromARGB(255, 59, 57, 57),
                      )
                    ],
                  ),
                  _get(this.context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Chip chip(String lable) {
    return Chip(
        labelPadding:
            const EdgeInsets.only(left: 10, right: 10, top: -4, bottom: -5),
        side: BorderSide(
          color: Theme.of(context).iconTheme.color!,
        ),
        label: Text(
          lable,
          style: const TextStyle(
            fontFamily: "Ember",
            fontSize: 13,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor);
  }
}
