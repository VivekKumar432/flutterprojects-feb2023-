import 'package:amazon_music/shared/constants/deviceDimensions.dart';
import 'package:amazon_music/shared/widgets/cards.dart';
import 'package:amazon_music/shared/widgets/chip.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../shared/constants/dialogue.dart';

class MyMusicFinder extends StatelessWidget {
  const MyMusicFinder({super.key});

  _gridMusicTiles(context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 3,
      child: GridView.count(
        primary: false,
        crossAxisCount: 2,
        childAspectRatio: 2.4,
        children: <Widget>[
          MyCard(
            colorList: const [
              Colors.grey,
              Colors.blueGrey,
            ],
            cardMessage: "Love & Heartbreak",
          ),
          MyCard(
            colorList: [
              Colors.purple,
              Colors.yellow.shade300,
            ],
            cardMessage: "Be Happy",
          ),
          MyCard(
            colorList: [
              Colors.yellow,
              Colors.orangeAccent,
              Colors.yellow.shade300,
            ],
            cardMessage: "Party Time",
          ),
          MyCard(
            colorList: const [
              Colors.yellow,
              Colors.red,
              Colors.redAccent,
            ],
            cardMessage: "Work Out",
          ),
          MyCard(
            colorList: [
              Colors.pink,
              Colors.deepPurple,
              Colors.yellow.shade300,
            ],
            cardMessage: "Travel",
          ),
          MyCard(
            colorList: const [
              Colors.blueGrey,
              Colors.grey,
            ],
            cardMessage: "Chilling out & Lounging",
          ),
        ],
      ),
    );
  }

  _musicFindTextField(context) {
    return Padding(
      padding:
          EdgeInsets.only(right: DeviceDimensions.deviceWidth(context) / 60),
      child: TextField(
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(12),
            prefixIcon: const Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
            filled: true,
            hintStyle: TextStyle(color: Colors.grey[800]),
            hintText: "Search music and podcasts",
            fillColor: Colors.white),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: Theme.of(context).iconTheme,
        toolbarHeight: DeviceDimensions.deviceHeight(context) / 6.7,
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
        actions: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                top: DeviceDimensions.deviceHeight(context) / 250,
                left: DeviceDimensions.deviceHeight(context) / 80,
                right: DeviceDimensions.deviceWidth(context) / 1180,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image(
                        image: const AssetImage("assets/notifications.png"),
                        color: Theme.of(context).iconTheme.color,
                        width: DeviceDimensions.deviceHeight(context) / 30,
                      ),
                      const Spacer(),
                      SizedBox(
                        width: DeviceDimensions.deviceWidth(context) / 2.5,
                        child: Image(
                          image: const AssetImage(
                              "assets/amazonmusiclogowhite.png"),
                          color: Theme.of(context).iconTheme.color,
                        ),
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
                  SizedBox(
                    height: DeviceDimensions.deviceWidth(context) / 35,
                  ),
                  _musicFindTextField(context)
                ],
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: DeviceDimensions.deviceHeight(context) / 45,
                  ),
                  MyChip(
                    text: 'Podcasts',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 3.0, right: 3),
                    child: musicFinderTab(context),
                  ),
                  _gridMusicTiles(context),
                  musicFinderTab(context),
                  _gridMusicTiles(context),
                  musicFinderTab(context),
                  _gridMusicTiles(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Row musicFinderTab(context) {
    return Row(
      children: [
        const AutoSizeText(
          "Moods & Activities",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const Spacer(),
        Chip(
            padding: const EdgeInsets.all(2),
            label: const Text(
              "SEE MORE",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: Theme.of(context).primaryColor),
      ],
    );
  }
}
