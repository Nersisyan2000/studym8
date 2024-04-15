import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/index.dart';

class PlayList extends StatefulWidget {
  const PlayList({super.key, required this.data});

  final CoursesData? data;

  @override
  State<PlayList> createState() => _PlayListState();
}

class _PlayListState extends State<PlayList> {
  int? _selectedTileInd;

  @override
  void initState() {
    _selectedTileInd = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 24.0),
      itemCount: widget.data?.playList.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.data?.playList[index]['title'] ?? '',
              style: roboto16TextStyle.copyWith(fontWeight: FontWeight.w500),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: _selectedTileInd == index ? purple : transparent,
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                ),
                child: ListTile(
                  title: Text(widget.data?.playList[index]['soundTitle'] ?? '',
                      style: roboto16TextStyle.copyWith(
                          fontWeight: FontWeight.w400,
                          color: _selectedTileInd == index ? white : black)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  // tileColor: _selectedTileInd == index ? purple : transparent,
                  subtitle: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Icon(
                          Icons.copyright,
                          size: 16.0,
                          color: _selectedTileInd == index ? white : black,
                        ),
                      ),
                      Text(
                        widget.data?.playList[index]['time'] ?? '',
                        style: roboto12TextStyle.copyWith(
                            color: _selectedTileInd == index ? white : black),
                      )
                    ],
                  ),
                  trailing: Icon(
                    CupertinoIcons.arrow_down_circle,
                    size: 30.0,
                    color: _selectedTileInd == index ? white : black,
                  ),
                  onTap: () {
                    setState(() {
                      _selectedTileInd = index;
                    });
                  },
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
