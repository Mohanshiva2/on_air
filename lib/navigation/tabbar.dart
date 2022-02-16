import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:on_air/views/home.dart';
import 'package:on_air/views/library.dart';
import 'package:on_air/views/profile.dart';
import 'package:on_air/views/search.dart';

class TabbBar extends StatefulWidget {
  const TabbBar({Key? key}) : super(key: key);

  @override
  _TabbBarState createState() => _TabbBarState();
}

class _TabbBarState extends State<TabbBar> {
  int _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) {
          setState(() {
            this._selectedTab = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined), label: 'Search'),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            label: 'Your Library',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
      body: Stack(
        children: [
          renderView(0, HomeView()),
          renderView(1, SearchView(),),
          renderView(2, LibraryView()),
          renderView(3, ProfileView()),
        ],
      ),
    );
  }

  Widget renderView(int tabIndex, Widget view) {
    return IgnorePointer(
      ignoring: _selectedTab != tabIndex,
      child: Opacity(
        opacity: _selectedTab == tabIndex ? 1 : 0,
        child: view,
      ),
    );
  }
}
