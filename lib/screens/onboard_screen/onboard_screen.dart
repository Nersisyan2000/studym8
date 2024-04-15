import 'package:flutter/material.dart';
import 'package:flutter_application_2/index.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purple,
      body: SafeArea(
          child: Column(
        children: <Widget>[
          ViewInstance(data: data[index]),
          Padding(
            padding: const EdgeInsets.only(top: 34),
            child: Text(
              '${index + 1} ${of.localized} ${data.length}',
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 34.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomElevatedButton.mainButton(
                  title: skip.localized,
                  onPress: () {
                    Navigator.pushNamed(context, getYouInRoute);
                  }),
              CustomElevatedButton.mainButton(
                  title: next.localized,
                  onPress: () {
                    setState(() {
                      if (index < data.length - 1) {
                        index++;
                      } else {
                        Navigator.pushNamed(context, getYouInRoute);
                      }
                    });
                  })
            ],
          ),
          const SizedBox(
            height: 40.0,
          ),
        ],
      )),
    );
  }
}
