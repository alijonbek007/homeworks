import 'dart:math';

import 'package:flutter/material.dart';

class Like extends StatefulWidget {
  @override
  _LikeState createState() => _LikeState();
}

class _LikeState extends State<Like> {
  List<Icon> _listOfIcon =
      List.generate(20, (index) => Icon(Icons.keyboard_arrow_down));
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(10),
            child: ExpansionTile(
              title: Text("Contact: $index"),
              collapsedBackgroundColor:
                  Colors.cyan[(Random().nextInt(8) + 1) * 100],
              collapsedTextColor: Colors.white,
              leading: Icon(Icons.contact_mail),
              trailing: _listOfIcon[index],
              children: [
                Container(
                  height: 80.0,
                  child: Text("Hello Cantact $index"),
                ),
                TextField(),
              ],
              textColor: Colors.white,
              backgroundColor: Colors.grey.shade300,
              iconColor: Colors.red,
              onExpansionChanged: (v){
                setState(() {
                  if(v){
                    _listOfIcon[index]=Icon(Icons.keyboard_arrow_up);
                  }else{
                    _listOfIcon[index]=Icon(Icons.keyboard_arrow_down);
                  }
                });
              },
              tilePadding: EdgeInsets.all(10),
              initiallyExpanded: index ==2?true:false,
            ),
          );
        },
        itemCount: 20,
      ),
    );
  }
}
