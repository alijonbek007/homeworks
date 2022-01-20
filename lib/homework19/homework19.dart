
import 'package:flutter/material.dart';
import 'package:homework/homework19/pages/contact.dart';
import 'package:homework/homework19/pages/home.dart';
import 'package:homework/homework19/pages/like.dart';
import 'package:homework/homework19/pages/setting.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndeOfBoootomBar = 0;
  List<Widget> _listOfPage = [];
  Widget? homePage, contactPage, likePage, settingsPage;

  var keyHomePage = PageStorageKey("home_page_key");
  var keyContactPage = PageStorageKey("home_page_key");

  var _bucket = PageStorageBucket();  
  @override
  void initState() {
    super.initState();
    homePage = Homee(key: keyHomePage);
    contactPage = Contact();
    likePage = Like();
    settingsPage = Settings();
    _listOfPage=[homePage!, contactPage!, likePage!, settingsPage!];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   title: Center(
      //     child: Text(
      //       "Bottom navigation Bar",
      //       style: TextStyle(color: Colors.red),
      //     ),
      //   ),
      // ),
      body: _listOfPage[_currentIndeOfBoootomBar],
      bottomNavigationBar: _bottomNavFunc(),
    );
  }

  Widget _bottomNavFunc() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          activeIcon: Icon(Icons.open_with),
          tooltip: "Home",
          label: "home",
          backgroundColor: Colors.yellow,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          activeIcon: Icon(Icons.group),
          tooltip: "User",
          label: "User",
          backgroundColor: Colors.indigo,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite_outline,
          ),
          activeIcon: Icon(Icons.favorite),
          tooltip: "Like",
          label: "Like",
          backgroundColor: Colors.red,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          activeIcon: Icon(Icons.settings_accessibility),
          tooltip: "Settings",
          label: "settings",
          backgroundColor: Colors.green,
        ),
      ],
      type: BottomNavigationBarType.shifting,
      currentIndex: _currentIndeOfBoootomBar,
      onTap: (v) {
        setState(() {
          _currentIndeOfBoootomBar = v;
        });
      },
    );
  }
}
