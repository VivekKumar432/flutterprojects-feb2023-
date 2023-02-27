import 'package:amazon_music/shared/constants/deviceDimensions.dart';
import 'package:flutter/material.dart';

class PodcastDetailsPage extends StatelessWidget {
  String imageURL;
  PodcastDetailsPage({required this.imageURL, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(200, 126, 64, 115),
          centerTitle: true,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            ),
          ),
          elevation: 0,
        ),
        body: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              colors: [Color.fromARGB(255, 121, 72, 97), Colors.black],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // buildExplore(),
                    podcastImage(imageURL, context),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 10, left: 10),
                      child: Text(
                        'Positive Thinking Mind',
                        style: TextStyle(
                            fontSize: 31,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 10, left: 10),
                      child: Text(
                        "Positive Thinking LLC",
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 255, 252, 252)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8, left: 10),
                      child: Text(
                        'PODCAST',
                        style: TextStyle(
                            fontSize: 13, color: Colors.grey.shade400),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        children: [
                          Chip(
                            labelPadding: const EdgeInsets.only(
                                left: 10, right: 10, top: 1, bottom: 1),
                            side: BorderSide(
                              color: Theme.of(context).iconTheme.color!,
                            ),
                            avatar: const Icon(Icons.favorite_border),
                            label: const Text(
                              "Follow",
                              style: TextStyle(
                                fontFamily: "Ember",
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            backgroundColor:
                                const Color.fromARGB(138, 121, 100, 111),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Icon(
                              Icons.info,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Icon(
                              Icons.share,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: DeviceDimensions.deviceHeight(context) * 0.015,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text(
                        'Start Here',
                        style: TextStyle(
                            fontFamily: "Ember",
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    buildSubject1(imageURL),
                    buildSort(),
                    SizedBox(
                      height: DeviceDimensions.deviceHeight(context) * 0.01,
                    ),
                    const Divider(
                      color: Colors.white,
                    ),
                    buildSubject1(imageURL),
                    SizedBox(
                      height: DeviceDimensions.deviceHeight(context) * 0.01,
                    ),
                    const Divider(
                      color: Colors.white,
                    ),
                    buildSubject1(imageURL),
                    SizedBox(
                      height: DeviceDimensions.deviceHeight(context) * 0.01,
                    ),
                    const Divider(
                      color: Colors.white,
                    ),
                    buildSubject1(imageURL),
                  ],
                ),
              ),
            ),
          ),
        ));
  }

  buildSort() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Row(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 20),
                    child: Container(
                      height: 35,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.transparent,
                          border: Border.all(color: Colors.white, width: 2)),
                      child: Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.arrow_circle_up,
                              color: Colors.white,
                              size: 17,
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Text(
                              'Sort',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.white,
                              size: 17,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 20),
                    child: Container(
                      height: 35,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.transparent,
                          border: Border.all(color: Colors.white, width: 2)),
                      child: Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              'Download',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 20),
                    child: Container(
                      height: 35,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.transparent,
                          border: Border.all(color: Colors.white, width: 2)),
                      child: Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              'Unplayed',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 20),
                    child: Container(
                      height: 35,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.transparent,
                          border: Border.all(color: Colors.white, width: 2)),
                      child: Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              'Season',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

podcastImage(String imageURL, context) {
  return Center(
    child: SizedBox(
      width: DeviceDimensions.deviceWidth(context) * 0.45,
      height: DeviceDimensions.deviceWidth(context) * 0.45,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        child: Center(
          child: Image.network(
            imageURL,
            width: DeviceDimensions.deviceWidth(context) * 0.45,
            height: DeviceDimensions.deviceWidth(context) * 0.45,
            fit: BoxFit.fill,
          ),
        ),
      ),
    ),
  );
}

buildSubject1(String subImage) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      color: Colors.transparent,
    ),

    //color: Color.fromARGB(255, 0, 0, 0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  subImage,
                  width: 60,
                  height: 60,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                width: 14,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'FEB 7 2023',
                      style: TextStyle(
                          color: Color.fromARGB(255, 37, 208, 219),
                          fontSize: 10,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: const [
                        Expanded(
                          child: Text(
                            'How To Stay Positive During The Winter Months',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 255, 252, 252)),
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        'I want to share with you 10 habits that make it much',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 85),
              child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade600),
                  child: const Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 20,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                '9 mins',
                style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 12,
                    fontWeight: FontWeight.w300),
              ),
            ),
            const Spacer(),
            const Icon(
              Icons.file_download_outlined,
              color: Colors.white,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, right: 20),
              child: Icon(
                Icons.more_horiz_outlined,
                color: Colors.white,
              ),
            )
          ],
        ),
      ],
    ),
  );
}
