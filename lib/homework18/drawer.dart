import 'package:flutter/material.dart';
import 'package:homework/homework18/choise_page.dart';

BuildContext? _context;

Drawer barberDrawer(BuildContext context) {
  _context = context;
  return Drawer(
    child: Column(
      children: [
        _drawerHeader(),
        _setImageLayout(2, "Hair Style"),
        _setImageLayout(4, "Beard Style"),

        _setCategory(
            "Favourite styles", Icons.favorite_border, BarberShopChoicePage()),
      ],
    ),
  );
}

UserAccountsDrawerHeader _drawerHeader() => UserAccountsDrawerHeader(
      accountName: _setText("alijon"),
      accountEmail: _setText("Hair"),
      currentAccountPicture:
          Image.asset("assets/images/homework18/logo.png"),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 56, 52, 67),
      ),
    );

Text _setText(String title) => Text(title);

ListTile _setCategory(String title, IconData iconData, Widget page) => ListTile(
      title: _setText(title),
      leading: Icon(
        iconData,
        color: Color.fromARGB(255, 56, 52, 67),
      ),
      onTap: () {
        Navigator.push(_context!, MaterialPageRoute(builder: (_) => page));
      },
    );

ListTile _setImageLayout(int index, String title) => ListTile(
  title: _setText(title),
  leading:   Container(
    color: Colors.orange,
        height: 24.0,
        width: 24.0,
      ),
  onTap: (){},
);