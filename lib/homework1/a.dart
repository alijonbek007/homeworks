import 'package:flutter/material.dart';

class Dars1 extends StatefulWidget {

  @override
  _Dars1State createState() => _Dars1State();
}

class _Dars1State extends State<Dars1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Milan  ________________  Search",
          style: TextStyle(
            color: Colors.grey[600],
            fontWeight: FontWeight.bold,
            fontSize: 18,

          ),
        
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        height: 60.0,
                        width: 60.0,
                        child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/homework1/men.jpeg'),
                        ),
                      ),
                      Text(
                        "New in",
                        style: TextStyle(
                        fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        height: 60.0,
                        width: 60.0,
                        child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/homework1/women.jpeg'),
                        ),
                      ),
                      Text(
                        "Sale",
                        style: TextStyle(
                        fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        height: 60.0,
                        width: 60.0,
                        child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/homework1/men2.jpeg'),
                        ),
                      ),
                      Text(
                        "Brand",
                        style: TextStyle(
                        fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        height: 60.0,
                        width: 60.0,
                        child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/homework1/asosiy.jpeg'),
                        ),
                      ),
                      Text(
                        "Clothing",
                        style: TextStyle(
                        fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        height: 60.0,
                        width: 60.0,
                        child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/homework1/shoess.jpg'),
                        ),
                      ),
                      Text(
                        "Shoes",
                        style: TextStyle(
                        fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 15),
                width: 360,
                height: 640,
                
                child: Column(
                  children: [
                    Container(
                      width: 350,
                      height: 350,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/homework1/pocket.jpg'
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text(
                       "Modern",
                        style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                        ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 65,
                          height: 1,
                          color: Colors.black,
                        ),
                        Text(
                          "Essentials",
                          style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                          ),
                        ),
                        Container(
                          width: 65,
                          height: 1,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    Text(
                       "Discover new styles",
                        // style: TextStyle(
                        // color: Colors.black
                        // ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 140, right: 140, top: 20, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.circle,
                            size: 6,
                            color: Colors.black,
                          ),
                          Icon(
                            Icons.radio_button_checked,
                            size: 10,
                            color: Colors.black,
                          ),
                          Icon(
                            Icons.circle,
                            size: 6,
                            color: Colors.black,
                          ),
                          Icon(
                            Icons.circle,
                            size: 6,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 172,
                          height: 40,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/homework1/shoess.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          width: 172,
                          height: 40,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/homework1/asosiy.jpeg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),  
                    SizedBox(height: 15,),                
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.home_outlined,
                            size: 25,
                            color: Colors.black,
                          ),
                          Icon(
                            Icons.search,
                            size: 25,
                            color: Colors.black,
                          ),
                          Icon(
                            Icons.shopping_bag_outlined,
                            size: 25,
                            color: Colors.black,
                          ),
                          Icon(
                            Icons.favorite_outline,
                            size: 25,
                            color: Colors.black,
                          ),
                          Icon(
                            Icons.perm_identity_outlined,
                            size: 25,
                            color: Colors.black,
                          ),
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
    );
  }
}