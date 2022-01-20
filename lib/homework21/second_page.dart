import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  int _currentIndexOfBottomBar = 4;

  @override
  Widget build(BuildContext context) {
    return 
      Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Settings",
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                    ),
                  )
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                  "https://source.unsplash.com/random/8",
                ),
              ),
              title: Text(
                "Adina Nurrahma",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              subtitle: Text(
                "Target your winners the accept\n terren languages",
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            ExpansionTile(
              trailing: CupertinoSwitch(value: false, onChanged: (v) {}),
              leading: Icon(
                CupertinoIcons.moon_fill,
                color: Colors.blue,
              ),
              title: Text(
                "Dark mode",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              children: [
                Text(
                  "Turn on dark mode",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            ExpansionTile(
              leading: Icon(
                CupertinoIcons.person_fill,
                color: Colors.blue,
              ),
              title: Text(
                "Account",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              children: [
                Text(
                  "Turn on dark mode",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            ExpansionTile(
              leading: Icon(
                Icons.notifications,
                color: Colors.blue,
              ),
              title: Text(
                "Notification",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              children: [
                Text(
                  "Turn on Notifications",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            ExpansionTile(
              leading: Icon(
                CupertinoIcons.chat_bubble_fill,
                color: Colors.blue,
              ),
              title: Text(
                "Chat Settings",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              children: [
                Text(
                  "Turn on dark mode",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            ExpansionTile(
              leading: Icon(
                CupertinoIcons.dot_radiowaves_right,
                color: Colors.blue,
              ),
              title: Text(
                "Data and Storage",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              children: [
                Text(
                  "Turn on dark mode",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            ExpansionTile(
              leading: Icon(
                CupertinoIcons.lock_fill,
                color: Colors.blue,
              ),
              title: Text(
                "Privacy and Security",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              children: [
                Text(
                  "Turn on dark mode",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            ExpansionTile(
              leading: Icon(
                CupertinoIcons.info_circle_fill,
                color: Colors.blue,
              ),
              title: Text(
                "About",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              children: [
                Text(
                  "Turn on dark mode",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
          ),
      );
  }
}
