import 'dart:async';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

class UserAuthenticationPage extends StatefulWidget {
  const UserAuthenticationPage({super.key});

  @override
  State<UserAuthenticationPage> createState() => _UserAuthenticationPageState();
}

class _UserAuthenticationPageState extends State<UserAuthenticationPage> {
  final GlobalKey<ExpansionTileCardState> cardA = GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardB = GlobalKey();
  Object? _radioSelected = 1;
  final String _radioVal = "";
  bool browseLoad = false;

  int selectedTile = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: const Color.fromARGB(255, 30, 29, 29),
          child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: const AssetImage(
                              "assets/amazonmusiclogowhite.png"),
                          width: MediaQuery.of(context).size.width / 2,
                          height: MediaQuery.of(context).size.width / 2,
                        ),
                      ],
                    ),
                    const Text(
                      "Welcome",
                      style: TextStyle(color: Colors.white, fontSize: 27),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ExpansionTileCard(
                      baseColor: const Color.fromARGB(255, 65, 62, 62),
                      expandedColor: const Color.fromARGB(255, 42, 40, 40),
                      key: cardA,
                      leading: Radio(
                          focusColor: Colors.orange,
                          value: 1,
                          groupValue: _radioSelected,
                          activeColor: Colors.white,
                          fillColor: MaterialStateColor.resolveWith(
                              (states) => Colors.orange),
                          onChanged: (value) {
                            _radioSelected = value;
                            // print(value); //selected value
                          }),
                      title: const AutoSizeText(
                        'Create account. New to Amazon?',
                        maxLines: 1,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 8.0,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "First and last name",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.all(8),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    filled: true,
                                    hintStyle:
                                        TextStyle(color: Colors.grey[800]),
                                    //hintText: "Search music and podcasts",
                                    fillColor:
                                        const Color.fromARGB(255, 53, 50, 50),
                                  ),
                                ),
                                const AutoSizeText(
                                  "Your email address",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.all(8),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    filled: true,
                                    hintStyle:
                                        TextStyle(color: Colors.grey[800]),
                                    //hintText: "Search music and podcasts",
                                    fillColor:
                                        const Color.fromARGB(255, 53, 50, 50),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const AutoSizeText(
                                  "Set password",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.all(8),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    filled: true,
                                    fillColor:
                                        const Color.fromARGB(255, 53, 50, 50),
                                  ),
                                ),
                                const AutoSizeText(
                                  "𝒊 Passwords must be at least 6 character",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  height:
                                      MediaQuery.of(context).size.height / 18,
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.cyan),
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50.0),
                                        ))),
                                    onPressed: () {},
                                    child: const Text(
                                      "Create your Amazon account",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 17),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                RichText(
                                  text: const TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(
                                          text:
                                              "By creating an account or logging in, you agree to Amazon's",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 17)),
                                      TextSpan(
                                          text: ' Conditons of Use',
                                          style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 17)),
                                      TextSpan(
                                          text: " and",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 17)),
                                      TextSpan(
                                          text: ' Privacy Policy',
                                          style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 17)),
                                      TextSpan(
                                          text: ".",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 17)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        // const AutoSizeText("Welcome"),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ExpansionTileCard(
                      baseColor: const Color.fromARGB(255, 65, 62, 62),
                      expandedColor: const Color.fromARGB(255, 42, 40, 40),
                      key: cardB,
                      leading: Radio(
                          focusColor: Colors.orange,
                          value: 2,
                          groupValue: _radioSelected,
                          activeColor: Colors.white,
                          fillColor: MaterialStateColor.resolveWith(
                              (states) => Colors.orange),
                          onChanged: (value) {
                            _radioSelected = value;
                            // print(value); //selected value
                          }),
                      title: const AutoSizeText(
                        'Sign in. Already a customer?',
                        maxLines: 1,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 8.0,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Email or phone number",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.all(8),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    filled: true,
                                    hintStyle:
                                        TextStyle(color: Colors.grey[800]),
                                    //hintText: "Search music and podcasts",
                                    fillColor:
                                        const Color.fromARGB(255, 53, 50, 50),
                                  ),
                                ),
                                const SizedBox(
                                  height: 18,
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  height:
                                      MediaQuery.of(context).size.height / 18,
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.cyan),
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50.0),
                                        ))),
                                    onPressed: () {
                                      browseLoad = true;
                                      setState(() {});
                                      Timer(const Duration(seconds: 3), () {
                                        browseLoad = false;
                                        setState(() {});
                                        Navigator.pushNamed(context, "/fourth");
                                      });
                                    },
                                    child: browseLoad
                                        ? Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const AutoSizeText(
                                                "Please wait",
                                                maxLines: 1,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 17),
                                              ),
                                              SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    100,
                                              ),
                                              Column(
                                                children: [
                                                  const SizedBox(
                                                    height: 20,
                                                  ),
                                                  const SizedBox(
                                                    height: 15,
                                                    child: LoadingIndicator(
                                                        indicatorType: Indicator
                                                            .ballPulseSync,
                                                        colors: [Colors.black],
                                                        strokeWidth: 1,
                                                        pathBackgroundColor:
                                                            Colors.black),
                                                  ),
                                                  SizedBox(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height /
                                                            110,
                                                  )
                                                ],
                                              ),
                                            ],
                                          )
                                        : const AutoSizeText(
                                            "Continue",
                                            maxLines: 1,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 17),
                                          ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                RichText(
                                  text: const TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(
                                          text:
                                              "By continuing, you agree to Amazon's",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 17)),
                                      TextSpan(
                                          text: ' Conditons of Use',
                                          style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 17)),
                                      TextSpan(
                                          text: " and",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 17)),
                                      TextSpan(
                                          text: ' Privacy Notice',
                                          style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 17)),
                                      TextSpan(
                                          text: ".",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 17)),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                RichText(
                                  text: const TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: 'Need help?',
                                          style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 17)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        // const AutoSizeText("Welcome"),
                      ],
                    ),
                  ],
                ),
              )),
        )));
  }
}
