import 'package:flutter/material.dart';
import 'package:flutter_application_2/index.dart';
import 'package:flutter_application_2/model/data/home_carousel_data.dart';
import 'package:flutter_application_2/resources/index.dart';

class CustomCarousel extends StatelessWidget {
  const CustomCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 175.0,
      child: Stack(
        children: [
          Container(
            height: 175,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: purple,
            ),
          ),
          Image.asset(
            carouselData.cornerImg,
            opacity: const AlwaysStoppedAnimation(.3),
          ),
          Image.asset(
            carouselData.backgroundShadowImg,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    carouselData.title,
                    style: roboto24TextStyle,
                  ),
                  Text(
                    '${carouselData.discount.toInt()}%',
                    style: roboto40TextStyle,
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    carouselData.subTitle,
                    style: roboto16TextStyle.copyWith(
                        fontWeight: FontWeight.w400, color: white),
                  ),
                  const Text(
                    '.....',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: white, fontSize: 30.0),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
