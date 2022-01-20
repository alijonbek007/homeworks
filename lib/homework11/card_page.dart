import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:homework/homework11/filter_page.dart';

class CardPage extends StatefulWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  Color rang = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey.shade200,
      body: Container(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 340,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 270.0,
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 45.0, left: 20.0, right: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hi, Burhan",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            ),
                            SizedBox(
                              height: 12.0,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Good Morning",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15.0),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Icon(
                                  CupertinoIcons.sun_max,
                                  color: Colors.white,
                                  size: 15.0,
                                )
                                // Icon(Icons.lightbulb_outline_sharp)
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 37,
                              height: 37,
                              decoration: BoxDecoration(
                                color: Colors.redAccent[100],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Icon(CupertinoIcons.settings,
                                    color: Colors.white),
                              ),
                            ),
                            SizedBox(
                              height: 3.0,
                            ),
                            Text(
                              "Map View",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 15.0),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 120),
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.settings),
                        prefixIcon: Icon(
                          CupertinoIcons.search,
                          size: 30.0,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        hintText: "Search",
                        // labelText: "Email",
                        labelStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 200, left: 20.0, right: 20.0),
                    padding: EdgeInsets.only(top: 10.0, left: 15.0, right: 8.0),
                    width: double.infinity,
                    height: 130.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "30%",
                              style: TextStyle(
                                  color: Colors.redAccent,
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "Discount for All Food",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 7.0,
                            ),
                            Text(
                              "Valid until November 16",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/homework11/tuxum.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Chef",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 21.0,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.menu,
                        size: 35.0,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Icon(
                        Icons.grid_view,
                        size: 27.0,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 348.6,
              width: 350,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 170,
                            height: 140,
                            child: Column(
                              children: [
                                Container(
                                  width: 170,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/homework11/burger.jpg"),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 5, top: 2),
                                  width: 170,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Chif Sam's..",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 17),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Tuna Sandwich",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 15),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Icon(
                                            Icons.moped_outlined,
                                            color: Colors.grey,
                                            size: 20.0,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 170,
                            height: 140,
                            child: Column(
                              children: [
                                Container(
                                  width: 170,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/homework11/barak.jpg"),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 5, top: 2),
                                  width: 170,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Aku's Kitc..",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 17),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Banku (Papp..",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 15),
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Icon(
                                            Icons.shopping_basket_outlined,
                                            color: Colors.grey,
                                            size: 20.0,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Icon(
                                            Icons.moped_outlined,
                                            color: Colors.grey,
                                            size: 20.0,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 170,
                            height: 140,
                            child: Column(
                              children: [
                                Container(
                                  width: 170,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/homework11/gril.jpg"),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 5, top: 2),
                                  width: 170,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Yorm's Kit..",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 17),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Jallof Rice",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 15),
                                          ),
                                          SizedBox(
                                            width: 40,
                                          ),
                                          Icon(
                                            Icons.moped_outlined,
                                            color: Colors.grey,
                                            size: 20.0,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 170,
                            height: 140,
                            child: Column(
                              children: [
                                Container(
                                  width: 170,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/homework11/baliq.jpg"),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 5, top: 2),
                                  width: 170,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Hadiza Ki..",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 17),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Waakyee..",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 15),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Icon(
                                            Icons.shopping_basket_outlined,
                                            color: Colors.grey,
                                            size: 20.0,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Icon(
                                            Icons.moped_outlined,
                                            color: Colors.grey,
                                            size: 20.0,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 170,
                            height: 140,
                            child: Column(
                              children: [
                                Container(
                                  width: 170,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/homework11/burger.jpg"),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 5, top: 2),
                                  width: 170,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Chif Sam's..",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 17),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Tuna Sandwich",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 15),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Icon(
                                            Icons.moped_outlined,
                                            color: Colors.grey,
                                            size: 20.0,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 170,
                            height: 140,
                            child: Column(
                              children: [
                                Container(
                                  width: 170,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/homework11/barak.jpg"),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 5, top: 2),
                                  width: 170,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Aku's Kitc..",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 17),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Banku (Papp..",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 15),
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Icon(
                                            Icons.shopping_basket_outlined,
                                            color: Colors.grey,
                                            size: 20.0,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Icon(
                                            Icons.moped_outlined,
                                            color: Colors.grey,
                                            size: 20.0,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Icon(
                            CupertinoIcons.search,
                            size: 30,
                            color: Colors.orange,
                          ),
                          Text(
                            "Search",
                            style: TextStyle(
                                color: Colors.orange,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FilterPage(),
                            ),
                          );
                          setState(() {
                            rang = Colors.orange;
                          });
                        },
                        child: Column(
                          children: [
                            Icon(
                              Icons.category_outlined,
                              size: 30,
                              color: rang,
                            ),
                            Text(
                              "Category",
                              style: TextStyle(
                                  color: rang,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.shopping_bag_outlined,
                            size: 30,
                            color: Colors.grey,
                          ),
                          Text(
                            "History",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.inbox_outlined,
                            size: 30,
                            color: Colors.grey,
                          ),
                          Text(
                            "Inbox",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            CupertinoIcons.person,
                            size: 30,
                            color: Colors.grey,
                          ),
                          Text(
                            "Profil",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
