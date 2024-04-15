import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/index.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: const Icon(CupertinoIcons.slider_horizontal_3, color: white),
      onPressed: () {
        showModalBottomSheet<void>(
          useRootNavigator: true,
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return Container(
              height: 550,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      filter.localized,
                      style: roboto24TextStyle.copyWith(
                          fontWeight: FontWeight.w500, color: black),
                      textAlign: TextAlign.center,
                    ),
                    const Divider(),
                    Text(
                      category.localized,
                      style: roboto24TextStyle.copyWith(
                          fontWeight: FontWeight.w400, color: black),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          for (var category in Categories.values)
                            Padding(
                              padding: const EdgeInsets.only(right: 16.0),
                              child: ProfessionItem(
                                categoryName: category.name,
                              ),
                            )
                        ],
                      ),
                    ),
                    const CustomRangeSlider(),
                    const BottomSheetRaitings(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FilterButton(
                          title: clearFilter.localized,
                          backgroundColor: gray,
                          textStyle: roboto16TextStyle.copyWith(
                              fontWeight: FontWeight.w400, color: purple),
                        ),
                        FilterButton(
                          title: applyFilter.localized,
                          backgroundColor: purple,
                          textStyle: roboto16TextStyle.copyWith(
                              fontWeight: FontWeight.w400, color: white),
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
