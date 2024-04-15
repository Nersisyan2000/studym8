import 'package:flutter/material.dart';
import 'package:flutter_application_2/index.dart';

class SingleCourseScreen extends StatefulWidget {
  const SingleCourseScreen({super.key, this.arguments});

  final CoursesData? arguments;

  @override
  State<SingleCourseScreen> createState() => _SingleCourseScreenState();
}

class _SingleCourseScreenState extends State<SingleCourseScreen> {
  final GlobalKey<NavigatorState> _singleCourseNavigatorKey =
      GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
          key: _singleCourseNavigatorKey,
          body: Padding(
            padding: const EdgeInsets.only(right: 20.0, left: 20.0, top: 20.0),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  widget.arguments?.img != null
                      ? Image.asset(
                          widget.arguments!.img,
                          fit: BoxFit.fill,
                        )
                      : const SizedBox.shrink(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Text(
                      widget.arguments?.title ?? '',
                      style: roboto24TextStyle.copyWith(
                          fontWeight: FontWeight.w500, color: black),
                    ),
                  ),
                  TabBar(
                    isScrollable: true,
                    tabAlignment: TabAlignment.start,
                    indicatorPadding: const EdgeInsets.only(bottom: 10.0),
                    labelPadding: const EdgeInsets.only(right: 48.0),
                    indicatorColor: black,
                    dividerColor: white,
                    labelColor: black,
                    tabs: <Widget>[
                      Tab(
                        icon: Text(lectures.localized),
                      ),
                      Tab(
                        icon: Text(more.localized),
                      ),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      children: <Widget>[
                        PlayList(data: widget.arguments),
                        const Center(
                          child: Text("It's rainy here"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
