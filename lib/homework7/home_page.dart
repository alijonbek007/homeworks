import 'package:flutter/material.dart';
import 'package:homework/homework7/strings.dart';

import 'car_detail.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          Strings.app_name,
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: RefreshIndicator(
      child: Center(
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemBuilder: (ctx, i) {
            return insideListView(ctx, i);
          },
          itemCount: Strings.CAR_NAMES.length,
        ),
      ),
      onRefresh: stateniYangila,
      ),
    );
  }

  Widget b() {
    return Center(
      child: ListView.builder(
        itemBuilder: (ctx, i) {
          return insideListView(ctx, i);
        },
        itemCount: Strings.CAR_NAMES.length,
      ),
    );
  }

  Widget a(ctx, i) {
    return RefreshIndicator(
      child: Center(
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemBuilder: (ctx, i) {
            return insideListView(ctx, i);
          },
          itemCount: Strings.CAR_NAMES.length,
        ),
      ),
      onRefresh: stateniYangila,
    );
  }

  Future<void> stateniYangila() {
    return Future.delayed(
      Duration(seconds: 2),
      () {
        setState(() {});
      },
    );
  }

  Widget insideListView(BuildContext ctx, int i) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(
            "assets/images/homework7/${Strings.CAR_NAMES[i].toLowerCase()}$i.jpeg",
          ),
        ),
        title: Text(
          Strings.CAR_NAMES[i],
        ),
        subtitle: Text(Strings.CAR_YEARS[i]),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: () {
          Navigator.push(
            ctx,
            MaterialPageRoute(
              builder: (ctx) => CarDetail(i),
            ),
          );
        },
      ),
    );
  }
}
