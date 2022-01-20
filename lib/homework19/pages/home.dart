import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Homee extends StatelessWidget {
  Homee({Key? key}) : super(key: key);
  PageStorageBucket _bucket = PageStorageBucket();
  String name = "User";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        firstElement(),
        secondElement(context),
        thirdElement(
          context,
        )
      ],
    ));
  }

  Widget firstElement() => Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Instagram",
              style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.send,
                color: Colors.black,
                size: 24.0,
              ),
            ),
          ],
        ),
      );

  Widget secondElement(BuildContext context) => Container(
        height: 80,
        child: PageStorage(
          key: PageStorageKey("1"),
          bucket: _bucket,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                      backgroundColor: Colors.indigo[Random().nextInt(9) * 100],
                      child: Text(
                        "$index",
                        style: TextStyle(fontSize: 20.0,color: Colors.white),
                      ),
                    ),
                    Text(
                        name.length <= 7 ? name : name.substring(0, 6) + "..."),
                  ],
                ),
              );
            },
            itemCount: 15,
          ),
        ),
      );

  Widget thirdElement(BuildContext context) => Container(
        height: 550.0,
        child: PageStorage(
          key: PageStorageKey("2"),
          bucket: _bucket,
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.pink[(Random().nextInt(8) + 1) * 100],
                ),
                alignment: Alignment.center,
                margin: EdgeInsets.all(7.0),
                height: 50.0,
                child: Text(
                  "$index",
                  style: TextStyle(fontSize: 30.0),
                ),
              );
            },
          ),
        ),
      );
}
