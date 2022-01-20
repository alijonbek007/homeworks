import 'package:flutter/material.dart';
import 'package:homework/homework19/pages/setting.dart';
import 'package:homework/homework21/chat_list.dart';

class Homework extends StatefulWidget {
  @override
  _HomeworkState createState() => _HomeworkState();
}

class _HomeworkState extends State<Homework> with TickerProviderStateMixin {
  int _currentIndexOfBottomBar = 0;
  Color rang = Colors.white;
  TabController? _controllerTab;
  @override
  void initState() {
    _controllerTab = TabController(length: 4, vsync: this);
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recent Chats",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
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
              
            TabBar(
              indicator: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(8.0)),
              controller: _controllerTab,
              indicatorColor: Colors.white,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey,
              isScrollable: true,
              indicatorWeight: 5.0,
              tabs: [
                Tab(
                  child: Text(
                    "AllChat",
                  ),
                ),
                Tab(
                  child: Text(
                    "Personal",
                  ),
                ),
                Tab(
                  child: Text(
                    "Work",
                  ),
                ),
                Tab(
                  child: Text(
                    "Groups",
                  ),
                ),
              ],
            ),
              Container(
                margin: EdgeInsets.only(top: 20.0),
                width: double.infinity,
                height: 470.0,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return chatView(context, index);
                  },
                  itemCount: Person.Names.length,
                ),
              ),
              Container(
                child: Icon(Icons.chat_rounded, color: Colors.white,),
                margin: EdgeInsets.only(left: 280.0,top: 62),
                width: 60.0,
                height: 60.0,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(40.0),
                ),
              )
            ],
          
        ),
      ),
    );
  }

  Widget chatView( context,  index) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(
          "https://source.unsplash.com/random/${index}.jpg",
        ),
        radius: 30.0,
      ),
      title: Text(
        Person.Names[index],
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(Person.messages[index]),
      trailing: Text(
        Person.times[index],
        style: TextStyle(color: Colors.grey),
      ),
    );
  }
}
