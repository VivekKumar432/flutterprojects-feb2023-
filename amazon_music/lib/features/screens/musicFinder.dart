import 'package:amazon_music/shared/widgets/cards.dart';
import 'package:amazon_music/shared/widgets/chip.dart';
import 'package:amazon_music/shared/widgets/textfield.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class MyMusicFinder extends StatelessWidget {
  const MyMusicFinder({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          //scrolledUnderElevation: 1,
          backgroundColor: Colors.green,
          elevation: 0,
          leading: const Icon(Icons.notifications),
          actions: const <Widget>[Icon(Icons.settings)],
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(color: Colors.black),
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 45,
                    child: MyTextField(),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  MyChip(
                    text: 'Podcasts',
                  ),
                  Row(
                    children: const [
                      AutoSizeText(
                        "Moods & Activities",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Chip(
                        padding: EdgeInsets.all(2),
                        label: Text(
                          "SEE MORE",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        backgroundColor: Color.fromARGB(255, 39, 38, 38),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 3,
                    child: GridView.count(
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
                  ),
                  const AutoSizeText(
                    "Listen Your Way",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 2,
                    child: GridView.count(
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
                  ),
                  Row(
                    children: const [
                      AutoSizeText(
                        "Moods & Activities",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Chip(
                        padding: EdgeInsets.all(2),
                        label: Text(
                          "SEE MORE",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        backgroundColor: Color.fromARGB(255, 39, 38, 38),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 2,
                    child: GridView.count(
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
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
