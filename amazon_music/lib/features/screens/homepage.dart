import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class MyHomepage extends StatefulWidget {
  const MyHomepage({super.key});

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  _getText(
      String message, double fontsize, Color fontColor, FontWeight fontWeight) {
    return AutoSizeText(
      message,
      maxLines: 1,
      style: TextStyle(
          color: fontColor, fontSize: fontsize, fontWeight: fontWeight),
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
                Navigator.pushNamed(context, "/fourth");
              },
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  width: MediaQuery.of(context).size.width / 2.5,
                  decoration: const BoxDecoration(
                      // color: Colors.teal,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(15),
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
                                    bottomLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15)),
                                color: Color.fromARGB(222, 33, 149, 243),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    _getText("50", 40, Colors.black,
                                        FontWeight.bold),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        _getText("Most Played", 15.5,
                                            Colors.white, FontWeight.bold),
                                        _getText("India", 17, Colors.white,
                                            FontWeight.bold),
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
                      _getText("50 Most Played: India", 17, Colors.white,
                          FontWeight.normal),
                      _getText(
                          "Sachin-Jigar, Arijit Singh",
                          15,
                          const Color.fromARGB(255, 226, 220, 220),
                          FontWeight.normal)
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                      Spacer(),
                      Chip(
                        padding: EdgeInsets.all(4),
                        label: Text(
                          "MUSIC",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        backgroundColor: Color.fromARGB(255, 39, 38, 38),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Chip(
                        padding: EdgeInsets.all(4),
                        label: Text(
                          "PODCASTS",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        backgroundColor: Color.fromARGB(255, 39, 38, 38),
                      ),
                      Spacer(),
                      Icon(
                        Icons.settings,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      _getText("Trending Playlist", 22, Colors.white,
                          FontWeight.bold),
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
                      _getText("Start a Podcast Habit", 22, Colors.white,
                          FontWeight.bold),
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
                      _getText(
                          "Shades of love", 22, Colors.white, FontWeight.bold),
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
                      _getText(
                          "Shades of love", 22, Colors.white, FontWeight.bold),
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
                      _getText(
                          "Shades of love", 22, Colors.white, FontWeight.bold),
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
                      _getText(
                          "Shades of love", 22, Colors.white, FontWeight.bold),
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
                      _getText(
                          "Shades of love", 22, Colors.white, FontWeight.bold),
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
}
