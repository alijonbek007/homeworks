import 'package:flutter/material.dart';
import 'package:homework/homework1/b.dart';
import 'package:homework/homework11/homework11.dart';
import 'package:homework/homework12/homework12.dart';
import 'package:homework/homework13/homework13.dart';
import 'package:homework/homework14/homework14.dart';
import 'package:homework/homework15/car_info.dart';
import 'package:homework/homework15/homework15.dart';
import 'package:homework/homework16/quiz_app.dart';
import 'package:homework/homework17/telegram_home_page.dart';
import 'package:homework/homework18/splash_screen.dart';
import 'package:homework/homework19/homework19.dart';
import 'package:homework/homework19/pages/setting.dart';
import 'package:homework/homework2/next_page.dart';
import 'package:homework/homework20/Page1.dart';
import 'package:homework/homework21/next_page.dart';
import 'package:homework/homework21/page1.dart';
import 'package:homework/homework22/tab_bar.dart';
import 'package:homework/homework23/fashion_page.dart';
import 'package:homework/homework24/select_page.dart';
import 'package:homework/homework25/home_pageui.dart';
import 'package:homework/homework27/views/home_pagess.dart';
import 'package:homework/homework28/home_page.dart';
import 'package:homework/homework29/tiktak_game.dart';
import 'package:homework/homework30/game.dart';
import 'package:homework/homework4/homework.dart';
import 'package:homework/homework5/homework.dart';
import 'package:homework/homework6/bottom_page.dart';
import 'package:homework/homework8/homework8.dart';

import 'homework3/homework_6.dart';
import 'homework7/home_page.dart';
import 'homework9/homework9.dart';

class HomeworkList extends StatelessWidget {
  const HomeworkList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "My Homeworks",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(color: Colors.black),
                ),
                child: ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Homework 1"),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PageB()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(color: Colors.black),
                ),
                child: ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Homework 2"),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => NextPage()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(color: Colors.black),
                ),
                child: ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Homework 3"),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePagee()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(color: Colors.black),
                ),
                child: ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Homework 4"),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home9()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(color: Colors.black),
                ),
                child: ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Homework 5"),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home10()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(color: Colors.black),
                ),
                child: ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Homework 6"),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BottomPage()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(color: Colors.black),
                ),
                child: ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Homework 7"),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyHomePage()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(color: Colors.black),
                ),
                child: ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Homework 8"),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => InputWidgetlar()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(color: Colors.black),
                ),
                child: ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Homework 9"),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(color: Colors.black),
                ),
                child: ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Homework 10"),
                  // onTap: () {
                  //   Navigator.push(context,
                  //       MaterialPageRoute(builder: (context) => MyHomePage()));
                  // },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(color: Colors.black),
                ),
                child: ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Homework 11"),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePageUi()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(color: Colors.black),
                ),
                child: ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Homework 12"),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => GameNum()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(color: Colors.black),
                ),
                child: ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Homework 13"),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomePageWaterShop()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(color: Colors.black),
                ),
                child: ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Homework 14"),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MarkListPage()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(color: Colors.black),
                ),
                child: ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Homework 15"),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CarBazarMainPage()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(color: Colors.black),
                ),
                child: ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Homework 16"),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => QuizApp()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(color: Colors.black),
                ),
                child: ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Telegram"),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomePagetelegram()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(color: Colors.black),
                ),
                child: ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Homework 18"),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BarberShopSplashScreen()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(color: Colors.black),
                ),
                child: ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Homework 19"),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BottomNav()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(color: Colors.black),
                ),
                child: ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Homework 20"),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FPage()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(color: Colors.black),
                ),
                child: ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Homework 21"),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BottomNav2()));
                  },
                ),
              ),
            ),
            //
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(color: Colors.black),
                ),
                child: ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Homework 22"),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TapBarHomePage()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(color: Colors.black),
                ),
                child: ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Homework 23"),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => UiPage()));
                  },
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(color: Colors.black),
                ),
                child: ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Homework 24"),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CoffeUi()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(color: Colors.black),
                ),
                child: ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Homework 25"),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(color: Colors.black),
                ),
                child: ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Homework 26"),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(color: Colors.black),
                ),
                child: ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Homework 27"),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePageBoat()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(color: Colors.black),
                ),
                child: ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Homework 28"),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Birinchi()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(color: Colors.black),
                ),
                child: ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Homework 29"),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => TikTakGame()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(color: Colors.black),
                ),
                child: ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Homework 29"),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Game()));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
