import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../shared/constants/deviceDimensions.dart';
import '../../shared/constants/dialogue.dart';
import 'myPodcasts.dart';

class Library extends StatelessWidget {
  const Library({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          SizedBox(width: 100, child: chip("MUSIC", context)),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Podcasts()));
            },
            child: chip("PODCASTS", context),
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
      body: SafeArea(
        child: Container(
          color: Theme.of(context).primaryColor,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              librayTiles("Playlist", context),
              const SizedBox(
                height: 4,
              ),
              librayTiles("Album", context),
              const SizedBox(
                height: 4,
              ),
              librayTiles("Songs", context),
              const Padding(
                padding: EdgeInsets.only(left: 15, top: 25),
                child: Text(
                  'Recents',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              buildSubject(context),
              buildSubject(context),
              buildSubject(context),
            ],
          ),
        ),
      ),
    );
  }

  buildSubject(context) {
    return Container(
      padding: const EdgeInsets.all(8),
      //color: Color.fromARGB(255, 0, 0, 0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: const Image(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/album3.jpeg"),
                  width: 70,
                  height: 65,
                )),
            const SizedBox(
              width: 8,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Text(
                        'Recently Added Songs',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 20,
                      )
                    ],
                  ),
                  const Text(
                    '0 songs',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  librayTiles(String name, context) {
    return Container(
      height: MediaQuery.of(context).size.height / 15,
      width: MediaQuery.of(context).size.width / 0.85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.grey,
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10, left: 8, right: 10),
        child: Row(
          children: [
            AutoSizeText(
              name,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios,
              size: 15,
            ),
          ],
        ),
      ),
    );
  }

  Chip chip(String lable, context) {
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
