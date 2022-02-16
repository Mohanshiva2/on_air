import 'package:flutter/material.dart';

import 'navigation/tabbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        brightness: Brightness.dark,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.white10,

          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: TextStyle(
            fontSize: 12,
          ),
            unselectedLabelStyle: TextStyle(
              fontSize: 12,
            ),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white38,

        ),
      ),
      home: TabbBar(),
    );
  }
}

