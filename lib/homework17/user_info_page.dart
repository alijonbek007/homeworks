import 'package:flutter/material.dart';
import 'package:homework/homework17/data.dart';

class ChatInfoPage extends StatefulWidget {
  int kelganindex;
  ChatInfoPage(this.kelganindex);
  @override
  _ChatInfoPageState createState() => _ChatInfoPageState();
}

class _ChatInfoPageState extends State<ChatInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              // stretch: false,

              expandedHeight: 300.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(
                  Data.TITLE_LIST[widget.kelganindex],
                  style: TextStyle(fontSize: 17.0),
                ),
                background: Image.asset(
                  Data.AVATAR_IMAGE[widget.kelganindex],
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ];
        },
        body: Container(
          height: 700.0,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/fon.jpg",
                ),
                fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}