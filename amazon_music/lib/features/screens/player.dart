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
                Color.fromARGB(255, 164, 163, 144),
                Color.fromARGB(255, 58, 50, 38),
                // Colors.grey,
              ],
            )),
            height: MediaQuery.of(context).size.height * .95,
            child: Padding(
              padding: const EdgeInsets.only(top: 15, left: 8.0),
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: <Widget>[
                      IconButton(
                        icon: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.keyboard_arrow_down,
                            color: Theme.of(context).iconTheme.color,
                            size: 25,
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.title,
                            style: const TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          AutoSizeText(
                            widget.subTitle,
                            maxLines: 1,
                            style: const TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Icon(
                        Icons.play_arrow,
                        color: Theme.of(context).iconTheme.color,
                        size: 40,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.forward_30,
                        color: Theme.of(context).iconTheme.color,
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
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(children: [
                          const AutoSizeText(
                            "From Finshots Daily",
                            // maxLines: 3,
                            style: TextStyle(
                                fontSize: 28, fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Theme.of(context).iconTheme.color,
                            size: 18,
                          )
                        ]),
                        const SizedBox(
                          height: 15,
                        ),
                        const AutoSizeText(
                          "In today's episode for 21st Feburary 2023, we narrate a tale of PFAS or forever chemicals adn whetaher we can dump them forever",
                          // maxLines: 3,
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]);
      },
    );
  }

  _playBackcontents(data) {
    return AutoSizeText(
      data,
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }

  _playbackSpeedSHow(context) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext bc) {
        return Wrap(children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Theme.of(context).primaryColor,
                const Color.fromARGB(255, 58, 50, 38),
              ],
            )),
            height: MediaQuery.of(context).size.height * .95,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(top: 15, left: 8.0),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _playBackcontents("Speed of Narration"),
                    const Divider(
                      height: 40,
                    ),
                    _playBackcontents("0.5 x"),
                    const Divider(
                      height: 40,
                    ),
                    _playBackcontents("0.8 x"),
                    const Divider(
                      height: 40,
                    ),
                    _playBackcontents("1 x"),
                    const Divider(
                      height: 40,
                    ),
                    _playBackcontents("1.2 x"),
                    const Divider(
                      height: 40,
                    ),
                    _playBackcontents("1.4 x"),
                    const Divider(
                      height: 40,
                    ),
                    _playBackcontents("1.6 x"),
                    const Divider(
                      height: 40,
                    ),
                    _playBackcontents("1.8 x"),
                    const Divider(
                      height: 40,
                    ),
                    _playBackcontents("2 x"),
                    const Divider(
                      height: 40,
                    ),
                    _playBackcontents("3 x"),
                  ],
                ),
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
                    child: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                  const Spacer(),
                  Icon(
                    Icons.cast,
                    color: Theme.of(context).iconTheme.color,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.share,
                    color: Theme.of(context).iconTheme.color,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.more_vert_outlined,
                    color: Theme.of(context).iconTheme.color,
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
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              AutoSizeText(
                widget.subTitle,
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ImageIcon(
                    const AssetImage("assets/moon-clear-fill.png"),
                    size: 20,
                    color: Theme.of(context).iconTheme.color,
                  ),
                  ImageIcon(
                    const AssetImage("assets/icons8-backward-10-50.png"),
                    size: 40,
                    color: Theme.of(context).iconTheme.color,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.width / 6,
                    width: MediaQuery.of(context).size.width / 6,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(111, 189, 188, 188),
                    ),
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.play_arrow,
                      size: 45,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                  ImageIcon(
                    const AssetImage("assets/icons8-forward-10-50.png"),
                    size: 40,
                    color: Theme.of(context).iconTheme.color,
                  ),
                  GestureDetector(
                    onTap: () {
                      _playbackSpeedSHow(context);
                    },
                    child: const AutoSizeText(
                      "1X",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  )
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
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ))
            ],
          ),
        ),
      ),
    ));
  }
}
