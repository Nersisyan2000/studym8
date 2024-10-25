import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/index.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String searchValue = '';
  final TextEditingController _searchController = TextEditingController();
  bool isFounded = true;
  List<String> searchResults = [];

  @override
  void initState() {
    searchResults = searchingList;
    super.initState();
  }

  void onQueryChanged(String query) {
    setState(() {
      if (query.isEmpty) {
        searchResults = searchingList;
      }
      isFounded = true;
      searchResults = searchingList
          .where((item) => item.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  void onClearAll() {
    setState(() {
      searchResults = [];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: isFounded ? true : false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SafeArea(
            child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 34.0, bottom: 16.0),
              decoration: BoxDecoration(
                border: Border.all(color: purple, width: 2.0),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: ListTile(
                leading: const Icon(CupertinoIcons.search),
                title: TextField(
                  onChanged: (text) {
                    onQueryChanged(text);
                    if (text.isNotEmpty && searchResults.isEmpty) {
                      setState(() {
                        isFounded = false;
                      });
                    }
                  },
                  controller: _searchController,
                  decoration: const InputDecoration(
                      hintText: 'Search', border: InputBorder.none),
                ),
                trailing: IconButton(
                    icon: const Icon(Icons.clear),
                    padding: const EdgeInsets.only(left: 30.0),
                    onPressed: () {
                      setState(() {
                        _searchController.text = '';
                        searchResults = searchingList;
                        isFounded = true;
                      });
                    }),
              ),
            ),
            isFounded == true
                ? Expanded(
                    child: SearchingList(
                      searchingResult: searchResults,
                      onPress: () {},
                      onClearAll: onClearAll,
                    ),
                  )
                : Expanded(
                    child: NotFoundedPage(
                      value: _searchController.text,
                    ),
                  ),
          ],
        )),
      ),
    );
  }
}
