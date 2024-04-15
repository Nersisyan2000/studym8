import 'package:flutter/material.dart';
import 'package:flutter_application_2/index.dart';

enum SampleItem { itemOne, itemTwo, itemThree }

class PopUpMenu extends StatefulWidget {
  const PopUpMenu({super.key});

  @override
  State<PopUpMenu> createState() => _PopUpMenuState();
}

class _PopUpMenuState extends State<PopUpMenu> {
  SampleItem? selectedItem;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<SampleItem>(
      initialValue: selectedItem,
      padding: EdgeInsets.zero,
      icon: const Icon(Icons.more_horiz),
      onSelected: (SampleItem item) {
        setState(() {
          selectedItem = item;
        });
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
        PopupMenuItem<SampleItem>(
          value: SampleItem.itemOne,
          child: Text(unenroll.localized),
        ),
        PopupMenuItem<SampleItem>(
          value: SampleItem.itemTwo,
          child: Text(resetDeadlines.localized),
        ),
        PopupMenuItem<SampleItem>(
          value: SampleItem.itemThree,
          child: Text(continueCourse.localized),
        ),
      ],
    );
  }
}
