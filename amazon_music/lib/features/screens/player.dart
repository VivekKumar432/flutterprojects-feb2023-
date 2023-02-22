import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class MyPlayer extends StatefulWidget {
  String title;
  String subTitle;
  MyPlayer({super.key, required this.title, required this.subTitle});

  @override
  State<MyPlayer> createState() => _MyPlayerState();
}

class _MyPlayerState extends State<MyPlayer> {
  void _tripEditModalBottomSheet(context) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext bc) {
        return Wrap(children: [
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 197, 180, 30),
                Colors.orange,
                Colors.grey,
              ],
            )),
            height: MediaQuery.of(context).size.height * .60,
            child: Padding(
              padding: const EdgeInsets.only(top: 15, left: 8.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      IconButton(
                        icon: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.black,
                            size: 25,
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      Column(
                        children: [
                          Text(
                            widget.title,
                            style: const TextStyle(
                                fontSize: 20, color: Colors.black),
                          ),
                          AutoSizeText(
                            widget.subTitle,
                            maxLines: 1,
                            style: const TextStyle(
                                fontSize: 15, color: Colors.black),
                          ),
                        ],
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.play_arrow,
                        color: Colors.black,
                        size: 35,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Icon(
                        Icons.forward_30,
                        color: Colors.black,
                        size: 30,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const AutoSizeText(
                    "In today's episode for 21st Feburary 2023, we narrate a tale of PFAS or forever chemicals adn whetaher we can dump them forever",
                    maxLines: 3,
                    style: TextStyle(
                        fontSize: 30, color: Color.fromARGB(255, 41, 38, 38)),
                  ),
                ],
              ),
            ),
          ),
        ]);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 144, 129, 0),
            Colors.orange,
            Colors.grey,
          ],
        )),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.cast,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.share,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.more_vert_outlined,
                    color: Colors.white,
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 2.2,
                  child: const ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: Image(
                      image: AssetImage("assets/albumCover.jpg"),
                      fit: BoxFit.cover,
                    ),
                  )),
              const SizedBox(
                height: 15,
              ),
              AutoSizeText(
                widget.title,
                maxLines: 1,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              AutoSizeText(
                widget.subTitle,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Spacer(),
                  // Icon(icons),
                  // PlaylistIconButtons(Icons.star, Colors.transparent),
                  // PlaylistIconButtons(Icons.fast_rewind, Colors.transparent),
                  // PlaylistIconButtons(Icons.play_arrow, Colors.transparent),
                  // PlaylistIconButtons(
                  //     Icons.forward_30_rounded, Colors.transparent),
                  // PlaylistIconButtons(Icons.speed, Colors.transparent),
                  Spacer(),
                ],
              ),
              const Spacer(),
              Center(
                  child: GestureDetector(
                onTap: () {
                  _tripEditModalBottomSheet(this.context);
                },
                child: const AutoSizeText(
                  "About episode",
                  style: TextStyle(
                      color: Colors.white, fontStyle: FontStyle.italic),
                ),
              ))
            ],
          ),
        ),
      ),
    ));
  }
}
