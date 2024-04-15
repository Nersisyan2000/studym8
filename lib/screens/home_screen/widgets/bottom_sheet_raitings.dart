import 'package:flutter/material.dart';
import 'package:flutter_application_2/index.dart';

class BottomSheetRaitings extends StatelessWidget {
  const BottomSheetRaitings({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Text(
            raiting.localized,
            style: roboto24TextStyle.copyWith(
                fontWeight: FontWeight.w400, color: black),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (var raiting in ratings)
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: purple,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: orangeSecond,
                          size: 13.0,
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          '$raiting',
                          style: roboto16TextStyle.copyWith(
                              fontWeight: FontWeight.w400, color: white),
                        )
                      ],
                    ),
                  ),
                )
            ],
          ),
        )
      ],
    );
  }
}
