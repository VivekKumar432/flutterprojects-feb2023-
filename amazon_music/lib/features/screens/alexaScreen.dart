import 'package:amazon_music/shared/constants/deviceDimensions.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class AlexaScreen extends StatelessWidget {
  const AlexaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SafeArea(
        bottom: false,
        child: SizedBox(
          height: DeviceDimensions.deviceHeight(context),
          width: DeviceDimensions.deviceWidth(context),
          child: Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
            child: Column(
              children: [
                const AutoSizeText(
                  "Control music with your voice - ",
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  style: TextStyle(
                    fontFamily: "Ember",
                    fontSize: 55,
                  ),
                ),
                const AutoSizeText(
                  "just ask Alexa",
                  maxLines: 2,
                  style: TextStyle(
                      fontFamily: "Ember",
                      color: Color.fromARGB(255, 37, 208, 219),
                      fontSize: 55,
                      fontWeight: FontWeight.bold),
                ),
                // RichText(
                //   text: const TextSpan(
                //     children: <TextSpan>[
                //       TextSpan(
                //           text: "Control music with your voice - ",
                //           style: TextStyle(
                //               fontFamily: "Ember",
                //               color: Colors.white,
                //               fontSize: 52)),
                //       TextSpan(
                //           text: 'just ask Alexa',
                //           style: TextStyle(
                //               fontFamily: "Ember",
                //               color: Color.fromARGB(255, 55, 208, 219),
                //               fontSize: 55)),
                //     ],
                //   ),
                // ),
                Image.asset(
                  'assets/amazon_alexa_page.png',
                  width: 210,
                  height: 210,
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    top: 70,
                  ),
                  child: AutoSizeText(
                    "To use Alexa hands-free please allow access to yout device's microphone",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Ember",
                      fontSize: 17,
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  width: DeviceDimensions.deviceWidth(context),
                  height: DeviceDimensions.deviceHeight(context) * 0.05,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color.fromARGB(255, 37, 208, 219)),
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.black,
                    ),
                    child: const Text(
                      'Go to settings',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                Container(
                  width: DeviceDimensions.deviceWidth(context),
                  height: DeviceDimensions.deviceHeight(context) * 0.05,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      foregroundColor: Theme.of(context).iconTheme.color,
                    ),
                    child: const Text(
                      'Cancel',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
