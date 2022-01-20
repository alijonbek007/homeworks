import 'package:flutter/material.dart';

class Home10 extends StatefulWidget {
  const Home10({Key? key}) : super(key: key);

  @override
  _Home10State createState() => _Home10State();
}

class _Home10State extends State<Home10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.menu,
              size: 30,
              color: Colors.redAccent,
            ),
            //Text("Explore", style: TextStyle(color: Colors.white, fontSize: 20),),
            Icon(
              Icons.search,
              size: 30,
              color: Colors.redAccent,
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          Container(
            child: SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  height: 40.0,
                  child: Text(
                    "Meals Card",
                    style: TextStyle(fontSize: 25, color: Colors.redAccent),
                  ),
                  margin: EdgeInsets.only(left: 10.0),
                ),
                Container(
                  height: 430,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    "https://images.unsplash.com/photo-1622732777601-e744c3401d44?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=626&q=80",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 0.5,
                                )),
                            padding: EdgeInsets.all(5),
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            width: 380,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                "Console development",
                                                style: TextStyle(
                                                    fontSize: 23,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "This is meal very very expensive",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 30,),
                                    FloatingActionButton(
                                      onPressed: () {},
                                      backgroundColor: Colors.redAccent,
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 35,
                                      ),
                                      
                                    ),
                                    
                                  ],
                                ),
                                SizedBox(height: 20,)
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    "https://images.unsplash.com/photo-1598214886806-c87b84b7078b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=625&q=80",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 0.5,
                                )),
                            padding: EdgeInsets.all(5),
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            width: 380,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                "Console development",
                                                style: TextStyle(
                                                    fontSize: 23,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "This is meal very very expensive",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 30,),
                                    FloatingActionButton(
                                      onPressed: () {},
                                      backgroundColor: Colors.redAccent,
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 35,
                                      ),
                                      
                                    ),
                                    
                                  ],
                                ),
                                SizedBox(height: 20,)
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    "https://images.unsplash.com/photo-1620791144170-8a443bf37a33?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=400&q=80",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 0.5,
                                )),
                            padding: EdgeInsets.all(5),
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            width: 380,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                "Console development",
                                                style: TextStyle(
                                                    fontSize: 23,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "This is meal very very expensive",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 30,),
                                    FloatingActionButton(
                                      onPressed: () {},
                                      backgroundColor: Colors.redAccent,
                                      
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 35,
                                      ),
                                      
                                    ),
                                    
                                  ],
                                ),
                                SizedBox(height: 20,)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 40.0,
                  child: Text(
                    "Popular Courses",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.redAccent,
                    ),
                  ),
                  margin: EdgeInsets.only(left: 10.0),
                ),
                Container(
                  height: 230,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    "https://images.unsplash.com/photo-1559948271-7d5c98d2e951?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 0.5,
                                )),
                            padding: EdgeInsets.all(5),
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            width: 180,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Console development",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.white,
                                          fontWeight:
                                              FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "This is meal very very expensive",
                                      style: TextStyle(
                                          fontSize: 8,
                                          color: Colors.white,
                                          fontWeight:
                                              FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    "https://images.unsplash.com/photo-1605461682195-9fd4d079a41d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 0.5,
                                )),
                            padding: EdgeInsets.all(5),
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            width: 180,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Console development",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.white,
                                          fontWeight:
                                              FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "This is meal very very expensive",
                                      style: TextStyle(
                                          fontSize: 8,
                                          color: Colors.white,
                                          fontWeight:
                                              FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    "https://images.unsplash.com/photo-1555126634-323283e090fa?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 0.5,
                                )),
                            padding: EdgeInsets.all(5),
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            width: 180,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Console development",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.white,
                                          fontWeight:
                                              FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "This is meal very very expensive",
                                      style: TextStyle(
                                          fontSize: 8,
                                          color: Colors.white,
                                          fontWeight:
                                              FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    "https://images.unsplash.com/photo-1591814468924-caf88d1232e1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 0.5,
                                )),
                            padding: EdgeInsets.all(5),
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            width: 180,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Console development",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.white,
                                          fontWeight:
                                              FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "This is meal very very expensive",
                                      style: TextStyle(
                                          fontSize: 8,
                                          color: Colors.white,
                                          fontWeight:
                                              FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 230,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    "https://images.unsplash.com/photo-1609710219374-f9ab04af099b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=375&q=80",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 0.5,
                                )),
                            padding: EdgeInsets.all(5),
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            width: 180,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Console development",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.white,
                                          fontWeight:
                                              FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "This is meal very very expensive",
                                      style: TextStyle(
                                          fontSize: 8,
                                          color: Colors.white,
                                          fontWeight:
                                              FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    "https://images.unsplash.com/photo-1611712141499-e1921675b032?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 0.5,
                                )),
                            padding: EdgeInsets.all(5),
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            width: 180,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Console development",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.white,
                                          fontWeight:
                                              FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "This is meal very very expensive",
                                      style: TextStyle(
                                          fontSize: 8,
                                          color: Colors.white,
                                          fontWeight:
                                              FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    "https://images.unsplash.com/photo-1504674900247-0877df9cc836?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 0.5,
                                )),
                            padding: EdgeInsets.all(5),
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            width: 180,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Console development",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.white,
                                          fontWeight:
                                              FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "This is meal very very expensive",
                                      style: TextStyle(
                                          fontSize: 8,
                                          color: Colors.white,
                                          fontWeight:
                                              FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    "https://images.unsplash.com/photo-1478145046317-39f10e56b5e9?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1868&q=80"
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 0.5,
                                )),
                            padding: EdgeInsets.all(5),
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            width: 180,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Console development",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.white,
                                          fontWeight:
                                              FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "This is meal very very expensive",
                                      style: TextStyle(
                                          fontSize: 8,
                                          color: Colors.white,
                                          fontWeight:
                                              FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
