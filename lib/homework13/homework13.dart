import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homework/homework13/sale_page.dart';

class HomePageWaterShop extends StatefulWidget {
  const HomePageWaterShop({Key? key}) : super(key: key);

  @override
  _HomePageWaterShopState createState() => _HomePageWaterShopState();
}

class _HomePageWaterShopState extends State<HomePageWaterShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Stack(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SalePageWaterUi(),
                          ),
                        );
                  },
                  icon: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 27.0, top: 7.0),
                  width: 15.0,
                  height: 15.0,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(
                      30.0,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Water Shop",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  child: Theme(
                    data: ThemeData(
                      primaryColor: Colors.white,
                      primaryColorDark: Colors.red,
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          CupertinoIcons.search,
                          color: Colors.grey,
                          size: 20.0,
                        ),

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(
                            color: Colors.white,
                            style: BorderStyle.solid,
                          ),
                        ),

                        hintText: "Search",
                        // labelText: "Email",
                        labelStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(color: Colors.white),
                        ),

                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          borderSide: BorderSide(width: 1, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Container(
                  height: 250.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/homework13/waterui.jpg"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(22.0),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Catalog",
                      style: TextStyle(
                          color: Colors.blueGrey[600],
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Row(
                        children: [
                          Text(
                            "see all",
                            style: TextStyle(
                                color: Colors.blueGrey[200],
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.blueGrey[200],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            child: Stack(
                              children: [
                                Container(
                                  width: 60.0,
                                  height: 90.0,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[100],
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(
                                        50.0,
                                      ),
                                      bottomLeft: Radius.circular(
                                        50.0,
                                      ),
                                      bottomRight: Radius.circular(
                                        15.0,
                                      ),
                                    ),
                                  ),
                                  margin:
                                      EdgeInsets.only(left: 110.0, top: 80.0),
                                ),
                                Container(
                                  width: 50.0,
                                  height: 90.0,
                                  decoration: BoxDecoration(
                                    color: Colors.deepOrange[100],
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(
                                        50.0,
                                      ),
                                      bottomLeft: Radius.circular(
                                        50.0,
                                      ),
                                    ),
                                  ),
                                  margin:
                                      EdgeInsets.only(left: 120.0, top: 50.0),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Bottles",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 35.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15.0,
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        width: 140.0,
                                        height: 35.0,
                                        child: Text(
                                          "Show all",
                                          style: TextStyle(
                                            color: Colors.blueGrey[200],
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(
                                            25.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            margin: EdgeInsets.only(right: 10.0),
                            decoration: BoxDecoration(
                              color: Colors.orange[100],
                              borderRadius: BorderRadius.circular(
                                20.0,
                              ),
                            ),
                            width: 170.0,
                            height: 170.0,
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Stack(
                              children: [
                                Container(
                                  width: 60.0,
                                  height: 90.0,
                                  decoration: BoxDecoration(
                                    color: Colors.deepOrange[100],
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(
                                        50.0,
                                      ),
                                      bottomLeft: Radius.circular(
                                        50.0,
                                      ),
                                      bottomRight: Radius.circular(
                                        15.0,
                                      ),
                                    ),
                                  ),
                                  margin:
                                      EdgeInsets.only(left: 110.0, top: 80.0),
                                ),
                                Container(
                                  width: 50.0,
                                  height: 90.0,
                                  decoration: BoxDecoration(
                                    color: Colors.deepOrange[300],
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(
                                        50.0,
                                      ),
                                      bottomLeft: Radius.circular(
                                        50.0,
                                      ),
                                    ),
                                  ),
                                  margin:
                                      EdgeInsets.only(left: 120.0, top: 50.0),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Bottles",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 35.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15.0,
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        width: 140.0,
                                        height: 35.0,
                                        child: Text(
                                          "Show all",
                                          style: TextStyle(
                                            color: Colors.blueGrey[200],
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(
                                            25.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            margin: EdgeInsets.only(right: 10.0),
                            decoration: BoxDecoration(
                              color: Colors.deepOrangeAccent,
                              borderRadius: BorderRadius.circular(
                                20.0,
                              ),
                            ),
                            width: 170.0,
                            height: 170.0,
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Stack(
                              children: [
                                Container(
                                  width: 60.0,
                                  height: 90.0,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[100],
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(
                                        50.0,
                                      ),
                                      bottomLeft: Radius.circular(
                                        50.0,
                                      ),
                                      bottomRight: Radius.circular(
                                        15.0,
                                      ),
                                    ),
                                  ),
                                  margin:
                                      EdgeInsets.only(left: 110.0, top: 80.0),
                                ),
                                Container(
                                  width: 50.0,
                                  height: 90.0,
                                  decoration: BoxDecoration(
                                    color: Colors.deepOrange[100],
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(
                                        50.0,
                                      ),
                                      bottomLeft: Radius.circular(
                                        50.0,
                                      ),
                                    ),
                                  ),
                                  margin:
                                      EdgeInsets.only(left: 120.0, top: 50.0),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Bottles",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 35.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15.0,
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        width: 140.0,
                                        height: 35.0,
                                        child: Text(
                                          "Show all",
                                          style: TextStyle(
                                            color: Colors.blueGrey[200],
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(
                                            25.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            margin: EdgeInsets.only(right: 10.0),
                            decoration: BoxDecoration(
                              color: Colors.orange[100],
                              borderRadius: BorderRadius.circular(
                                20.0,
                              ),
                            ),
                            width: 170.0,
                            height: 170.0,
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Stack(
                              children: [
                                Container(
                                  width: 60.0,
                                  height: 90.0,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[100],
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(
                                        50.0,
                                      ),
                                      bottomLeft: Radius.circular(
                                        50.0,
                                      ),
                                      bottomRight: Radius.circular(
                                        15.0,
                                      ),
                                    ),
                                  ),
                                  margin:
                                      EdgeInsets.only(left: 110.0, top: 80.0),
                                ),
                                Container(
                                  width: 50.0,
                                  height: 90.0,
                                  decoration: BoxDecoration(
                                    color: Colors.deepOrange[100],
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(
                                        50.0,
                                      ),
                                      bottomLeft: Radius.circular(
                                        50.0,
                                      ),
                                    ),
                                  ),
                                  margin:
                                      EdgeInsets.only(left: 120.0, top: 50.0),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Bottles",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 35.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15.0,
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        width: 140.0,
                                        height: 35.0,
                                        child: Text(
                                          "Show all",
                                          style: TextStyle(
                                            color: Colors.blueGrey[200],
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(
                                            25.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            margin: EdgeInsets.only(right: 10.0),
                            decoration: BoxDecoration(
                              color: Colors.orange[100],
                              borderRadius: BorderRadius.circular(
                                20.0,
                              ),
                            ),
                            width: 170.0,
                            height: 170.0,
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Stack(
                              children: [
                                Container(
                                  width: 60.0,
                                  height: 90.0,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[100],
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(
                                        50.0,
                                      ),
                                      bottomLeft: Radius.circular(
                                        50.0,
                                      ),
                                      bottomRight: Radius.circular(
                                        15.0,
                                      ),
                                    ),
                                  ),
                                  margin:
                                      EdgeInsets.only(left: 110.0, top: 80.0),
                                ),
                                Container(
                                  width: 50.0,
                                  height: 90.0,
                                  decoration: BoxDecoration(
                                    color: Colors.deepOrange[100],
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(
                                        50.0,
                                      ),
                                      bottomLeft: Radius.circular(
                                        50.0,
                                      ),
                                    ),
                                  ),
                                  margin:
                                      EdgeInsets.only(left: 120.0, top: 50.0),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Bottles",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 35.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15.0,
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        width: 140.0,
                                        height: 35.0,
                                        child: Text(
                                          "Show all",
                                          style: TextStyle(
                                            color: Colors.blueGrey[200],
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(
                                            25.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            margin: EdgeInsets.only(right: 10.0),
                            decoration: BoxDecoration(
                              color: Colors.orange[100],
                              borderRadius: BorderRadius.circular(
                                20.0,
                              ),
                            ),
                            width: 170.0,
                            height: 170.0,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(icon: Icon(Icons.menu, color: Colors.grey,size: 35.0,),onPressed: (){},),
                    IconButton(icon: Icon(Icons.grid_view_rounded, color: Colors.grey,size: 35.0,),onPressed: (){},),
                    IconButton(icon: Icon(Icons.favorite_outline, color: Colors.grey,size: 35.0,),onPressed: (){},),
                    IconButton(icon: Icon(Icons.person_outline,color: Colors.grey,size: 35.0,),onPressed: (){},),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
