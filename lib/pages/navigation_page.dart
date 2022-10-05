import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';
import 'search_page.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int currentIndex = 0;
  //Pages
  final screens = [const HomePage(), const SearchPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: FlashyTabBar(
        animationDuration: const Duration(seconds: 1),
        selectedIndex: currentIndex,
        showElevation: true,
        onItemSelected: (index) => setState(() {
          currentIndex = index;
        }),
        items: [
          FlashyTabBarItem(
            icon: const Icon(CupertinoIcons.home),
            title: const Text('Home'),
          ),
          FlashyTabBarItem(
            icon: const Icon(CupertinoIcons.search),
            title: const Text('Search'),
          ),
        ],
      ),
      body: screens[currentIndex],
    );
  }
}
