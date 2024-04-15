import 'package:flutter/material.dart';
import 'package:flutter_application_2/index.dart';
import 'package:flutter_application_2/screens/search_screen/widgets/index.dart';

class SearchingList extends StatefulWidget {
  const SearchingList(
      {super.key,
      required this.searchingResult,
      required this.onPress,
      required this.onClearAll});

  final List<String> searchingResult;
  final VoidCallback onPress;
  final VoidCallback onClearAll;

  @override
  State<SearchingList> createState() => _SearchingListState();
}

class _SearchingListState extends State<SearchingList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StatusLine(
            leftTitle: recent.localized,
            rightTitle: clearAll.localized,
            onClearAll: widget.onClearAll),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Divider(
            color: black,
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (var searchingItem in widget.searchingResult)
                  ListTile(
                    title: Text(searchingItem),
                    trailing: IconButton(
                      icon: const Icon(Icons.clear),
                      padding: const EdgeInsets.only(left: 30.0),
                      onPressed: () {
                        setState(() {
                          widget.searchingResult
                              .removeWhere((item) => item == searchingItem);
                        });
                      },
                    ),
                  )
              ],
            ),
          ),
        )
      ],
    );
  }
}
