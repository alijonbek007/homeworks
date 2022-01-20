import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class TapBarHomePage extends StatefulWidget {
  @override
  _TapBarHomePageState createState() => _TapBarHomePageState();
}

class _TapBarHomePageState extends State<TapBarHomePage>
    with TickerProviderStateMixin {
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
      backgroundColor: HexColor('0F123BFF'),
      body: Column(
        children: [
          SizedBox(
            height: 70,
          ),
          Center(
            child: Container(
              width: 80.0,
              child: Divider(
                color: Colors.white,
                thickness: 4,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
                color: HexColor('0F1362FF'),
                borderRadius: BorderRadius.circular(35)),
            height: MediaQuery.of(context).size.height - 106,
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Activity",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 25,
                ),
                TabBar(
                  indicator: BoxDecoration(
                      color: Colors.orange.shade200,
                      borderRadius: BorderRadius.circular(8.0)),
                  controller: _controllerTab,
                  indicatorColor: Colors.black,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  isScrollable: true,
                  indicatorWeight: 5.0,
                  tabs: [
                    Tab(
                      child: Text(
                        "All",
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Shopping",
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Taxi",
                      ),
                    ),
                    Tab(
                      child: Text("Transport"),
                    ),
                  ],
                ),
                Expanded(
                    child: TabBarView(
                  children: [
                    Container(
                      height: 400,

                      child: ListView.builder(
                        itemBuilder: (ctx, i) {
                          return Container(
                            
                            decoration: BoxDecoration(color: Colors.indigo[900],borderRadius: BorderRadius.circular(30)),
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.all(15),
                            child: ListTile(
                              leading: Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: Colors.indigo[700],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              title: Text("Shopping",style: TextStyle(color: Colors.white),),
                              subtitle: Text("June 20, 3:41 pm",style: TextStyle(color: Colors.white),),
                              trailing: Text("-&16.36",style: TextStyle(color: Colors.white),),
                            ),
                          );
                        },
                        itemCount: 5,
                      ),
                    ),
                    Container(),
                    Container(),
                    Container(),
                  ],
                  controller: _controllerTab,
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
