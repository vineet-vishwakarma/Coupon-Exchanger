import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      iconSize: 25,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.black,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            label: ''),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.settings,
            color: Colors.black,
          ),
          label: '',
        )
      ],
    );
  }
}
