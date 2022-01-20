import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homework/homework17/chat_page.dart';
import 'package:homework/homework17/data.dart';

class HomePagetelegram extends StatefulWidget {
  const HomePagetelegram({Key? key}) : super(key: key);

  @override
  _HomePagetelegramState createState() => _HomePagetelegramState();
}

class _HomePagetelegramState extends State<HomePagetelegram>
    with TickerProviderStateMixin {
  TabController? _controllerTab;
  @override
  void initState() {
    _controllerTab = TabController(length: 8, vsync: this);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
    List _categories = [
      [Icons.group, "New Group"],
      [Icons.person, "Contacts"],
      [Icons.call, "Calls"],
      [CupertinoIcons.location, "People Nearby"],
      [Icons.bookmark, "Saved Messages"],
      [Icons.settings, "Settings"],
    ];

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              _scaffoldKey.currentState!.openDrawer();
            },
            icon: Icon(Icons.menu)),
        title: Text(
          "Telegram",
          style: Theme.of(context)
              .textTheme
              .subtitle1!
              .copyWith(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: SafeArea(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    // PROFILE INFO
                    Container(
                      height: 152.0,
                      color: Colors.blueAccent,
                      padding: const EdgeInsets.only(
                          right: 20.0, left: 20.0, bottom: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.black,
                                radius: 30.0,
                              ),
                              Icon(CupertinoIcons.moon_fill),
                            ],
                          ),
                          SizedBox(height: 20.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "John Doe",
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1!
                                        .copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                  Text(
                                    "+998 33 288 7702",
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle2!
                                        .copyWith(
                                          color: Colors.white,
                                        ),
                                  )
                                ],
                              ),
                              Icon(Icons.keyboard_arrow_down),
                            ],
                          ),
                        ],
                      ),
                    ),
                    // CATEGORIES
                    Container(
                      child: Column(
                        children: [
                          ...List.generate(
                            _categories.length,
                            (index) {
                              return singleCategory(
                                context,
                                icon: _categories[index][0],
                                title: _categories[index][1],
                              );
                            },
                          )
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    singleCategory(
                      context,
                      icon: Icons.person_add,
                      title: "Invite Friends",
                    ),
                    singleCategory(
                      context,
                      icon: Icons.info,
                      title: "Telegram FAQ",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.blue,
            child: TabBar(
              controller: _controllerTab,
              indicatorColor: Colors.white,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white60,
              isScrollable: true,
              indicatorWeight: 5.0,
              
              tabs: [
                Tab(
                  child: Text(
                    "Channel",
                    
                  ),
                ),
                Tab(
                  child: Text(
                    "Cantact",
                    
                  ),
                ),
                Tab(
                  child: Text(
                    "Group",
                    
                  ),
                ),
                Tab(
                  child: Text(
                    "Bots",
                   
                  ),
                ),
                Tab(
                  child: Text(
                    "Group",
                  ),
                ),
                Tab(
                  child: Text(
                    "Bots",
                  ),
                ),
                Tab(
                  child: Text(
                    "Group",
                  ),
                ),
                Tab(
                  child: Text(
                    "Bots",
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _controllerTab,
              children: [
                ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(Data.AVATAR_IMAGE[index]),
                        radius: 30,
                      ),
                      title: Text(
                        Data.TITLE_LIST[index],
                      ),
                      subtitle: Text(
                        Data.SUBTITLE_LIST[index],
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (contex) => ChatPage(index),
                          ),
                        );
                      },
                    );
                  },
                  itemCount: Data.TITLE_LIST.length,
                ),
                Container(),
                Container(),
                Container(),
                Container(),
                Container(),
                Container(),
                Container(),
              ],
            ),
          ),
        ],
      ),
      
    );
  }

  singleCategory(BuildContext context, {icon, title, index}) {
    return Container(
      padding: EdgeInsets.only(left: 20.0, top: 15.0),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.grey,
            size: 30.0,
          ),
          SizedBox(width: 25.0),
          Text(
            "$title",
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                ),
          ),
        ],
      ),
    );
  }
}
