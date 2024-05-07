import 'package:e_learning_app/core/constants.dart';

import 'package:flutter/material.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  int currentPageIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: kAccentColor,
        selectedIndex: currentPageIndex,
        backgroundColor: kCloudColor,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.note),
            icon: Icon(Icons.note_outlined),
            label: 'Bills',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.person),
            icon: Icon(Icons.person_outlined),
            label: 'Profile',
          ),
        ],
      ),
      body: <Widget>[
        Scaffold(
            body: const Center(
          child: Text(
            'Bills',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 51,
              fontWeight: FontWeight.bold,
              color: kMainColor,
            ),
          ),
        )),
        Scaffold(
            body: const Center(
          child: Text(
            'Bills',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 51,
              fontWeight: FontWeight.bold,
              color: kMainColor,
            ),
          ),
        )),
        Scaffold(
            body: const Center(
          child: Text(
            'Profile',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 51,
              fontWeight: FontWeight.bold,
              color: kMainColor,
            ),
          ),
        )),
      ][currentPageIndex],
    );
  }
}
