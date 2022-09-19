import 'package:flutter/material.dart';
import 'package:voting_app_ui/Screens/fouth.dart';
import 'package:voting_app_ui/Screens/second.dart';
import 'package:voting_app_ui/Screens/third.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black.withAlpha(100),
      items: [
        BottomNavigationBarItem(
          icon: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.book),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SecondScreen(),
                  ));
            },
            icon: const Icon(Icons.trending_up),
          ),
          label: 'trending up',
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ThirdScreen(),
                  ));
            },
            icon: const Icon(Icons.pie_chart),
          ),
          label: 'pie chart',
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FouthScreen(),
                  ));
            },
            icon: const Icon(Icons.person),
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}
