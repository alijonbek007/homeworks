import 'package:flutter/material.dart';
import 'package:homework/homework19/pages/contact.dart';
import 'package:homework/homework19/pages/like.dart';
import 'package:homework/homework21/page1.dart';
import 'package:homework/homework21/second_page.dart';

class BottomNav2 extends StatefulWidget {
  @override
  _BottomNav2State createState() => _BottomNav2State();
}

class _BottomNav2State extends State<BottomNav2> {
  int _currentIndeOfBoootomBar = 0;
  List<Widget> _listOfPage = [];
  Widget? homePage, contactPage, likePage, settingsPage;

  var keyHomePage = PageStorageKey("home_page_key");
  var keyContactPage = PageStorageKey("home_page_key");

  var _bucket = PageStorageBucket();  
  @override
  void initState() {
    super.initState();
    homePage = Homework();
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
          icon: Icon(Icons.chat,color: Colors.blue),
          tooltip: "Chats",
          label: "Chats",
           
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history,color: Colors.blue),
          tooltip: "History",
          label: "History",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.call,color: Colors.blue,
          ),
          
          tooltip: "Call",
          label: "Call",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person,color: Colors.blue),
          tooltip: "Account",
          label: "Account",
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