import 'package:flutter/material.dart';
import 'package:flutter_application_2/index.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar(
      {super.key, required this.selectedInd, required this.onItemTapped});

  final int selectedInd;
  final Function(int) onItemTapped;

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: purple,
      unselectedItemColor: primaryGray,
      selectedItemColor: white,
      unselectedLabelStyle: roboto10TextStyle.copyWith(color: primaryGray),
      currentIndex: widget.selectedInd,
      selectedLabelStyle: roboto10TextStyle,
      onTap: widget.onItemTapped,
      items: [
        BottomNavigationBarItem(
            icon: const Icon(Icons.home_outlined), label: home.localized),
        BottomNavigationBarItem(
            icon: const Icon(Icons.sticky_note_2_outlined),
            label: myCourses.localized),
        BottomNavigationBarItem(
            icon: const Icon(Icons.favorite_border_outlined),
            label: favourites.localized),
        BottomNavigationBarItem(
            icon: const Icon(Icons.person_pin_outlined),
            label: profile.localized)
      ],
    );
  }
}
