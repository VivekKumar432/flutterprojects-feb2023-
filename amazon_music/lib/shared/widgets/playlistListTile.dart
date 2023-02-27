import 'package:amazon_music/features/screens/player.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class PlaylistListTile extends StatelessWidget {
  PlaylistListTile({super.key});

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

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          controller: scrollController,
          itemCount: songTitles.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (builder) => MyPlayer(
                              subTitle: subtitles[0],
                              title: songTitles[index],
                            )));
              },
              child: Card(
                  color: const Color.fromARGB(21, 158, 158, 158),
                  child: ListTile(
                      leading: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          AutoSizeText((index + 1).toString(),
                              style: const TextStyle(color: Colors.white)),
                          const SizedBox(
                            width: 10,
                          ),
                          const Image(
                              image: AssetImage("assets/albumCover.jpg")),
                        ],
                      ),
                      title: AutoSizeText(
                        songTitles[index],
                        style: const TextStyle(color: Colors.white),
                      ),
                      subtitle: AutoSizeText(subtitles[0],
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(color: Colors.white)),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            icons[0],
                            size: 30,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Icon(
                            icons[1],
                            size: 30,
                            color: Colors.white,
                          ),
                        ],
                      ))),
            );
          }),
    );
  }
}
