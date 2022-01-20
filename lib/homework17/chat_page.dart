import 'package:flutter/material.dart';
import 'package:homework/homework17/data.dart';
import 'package:homework/homework17/user_info_page.dart';

class ChatPage extends StatefulWidget {
  int kelganindex;
  ChatPage(this.kelganindex);
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context,) {
    return Scaffold(
        appBar: AppBar(
          title: ListTile(
            leading: GestureDetector(
              child: CircleAvatar(
                backgroundImage:
                    AssetImage(Data.AVATAR_IMAGE[widget.kelganindex]),
                radius: 25,
              ),
              onTap: (){
                Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (contex) => ChatInfoPage(widget.kelganindex),
                          ),
                        );
              },
            ),
            title: Text(
              Data.TITLE_LIST[widget.kelganindex],
              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
            ),
          ),
          actions: [
            Icon(Icons.more_vert,),
          ],
        ),
        body: Center(
          child: Text("Simple Text"),
        )

        // NestedScrollView(
        //   headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        //     return <Widget>[
        //       SliverAppBar(
        //         // stretch: false,

        //         expandedHeight: 250.0,
        //         floating: false,
        //         pinned: true,
        //         flexibleSpace: FlexibleSpaceBar(
        //           centerTitle: true,
        //           title: Text(
        //             Data.TITLE_LIST[widget.kelganindex],
        //             style: TextStyle(fontSize: 17.0),
        //           ),
        //           background: Image.asset(
        //             Data.AVATAR_IMAGE[widget.kelganindex],
        //             fit: BoxFit.cover,
        //           ),
        //         ),
        //       ),
        //     ];
        //   },
        //   body: Container(
        //     height: 700.0,
        //     width: double.infinity,
        //     decoration: BoxDecoration(
        //       image: DecorationImage(
        //           image: AssetImage(
        //             "assets/images/fon.jpg",
        //           ),
        //           fit: BoxFit.cover),
        //     ),
        //   ),
        // ),
        );
  }
}
