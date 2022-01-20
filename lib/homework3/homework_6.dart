import 'package:flutter/material.dart';
import 'package:homework/homework3/sport_ui.dart';

class HomePagee extends StatefulWidget {
  @override
  _HomePageeState createState() => _HomePageeState();
}

class _HomePageeState extends State<HomePagee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 30.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.blue[100],
                ),
                child: Text(
                  "Hey Brian,",
                  style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 30.0),
                width: 60.0,
                height: 60.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    25.0,
                  ),
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/homework3/user.jpeg",
                      ),
                      fit: BoxFit.cover),
                ),
              )
            ],
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(
              left: 30.0,
              
            ),
            child: Text(
              "What are you\nup to today?",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 28.0,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 160.0,
                height: 140.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.blue[300],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(top: 10, left: 20.0),
                      child: Text(
                        "Swimming",
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      width: 150.0,
                      height: 89.0,
                      child: Image.asset(
                        "assets/images/homework3/swim.png",
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 160.0,
                height: 140.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.orangeAccent,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(
                        top: 10,
                        left: 20.0,
                      ),
                      child: Text(
                        "Running",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      width: 150.0,
                      height: 89.0,
                      child: Image.asset(
                        "assets/images/homework3/run.png",
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 160.0,
                height: 140.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.deepOrange[300],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(top: 10, left: 20.0),
                      child: Text(
                        "Football",
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      width: 150.0,
                      height: 89.0,
                      child: Image.asset(
                        "assets/images/homework3/footballl.png",
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 160.0,
                height: 140.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.purpleAccent[700],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(
                        top: 10,
                        left: 20.0,
                      ),
                      child: Text(
                        "Basketball",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      width: 150.0,
                      height: 89.0,
                      child: Image.asset(
                        "assets/images/homework3/basketball.png",
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 160.0,
                height: 140.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.indigoAccent,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(top: 10, left: 20.0),
                      child: Text(
                        "Cycling",
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      width: 150.0,
                      height: 89.0,
                      child: Image.asset(
                        "assets/images/homework3/cy.png",
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 160.0,
                height: 140.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.pink[300],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(
                        top: 10,
                        left: 20.0,
                      ),
                      child: Text(
                        "Tennis",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      width: 150.0,
                      height: 89.0,
                      child: Image.asset(
                        "assets/images/homework3/tenniss.png",
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home_filled,
                  size: 30.0,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SportUi(),),);
                },
                icon: Icon(
                  Icons.stacked_bar_chart_rounded, 
                  color: Colors.grey,
                  size: 30.0,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.chat_bubble_outline_rounded,
                  color: Colors.grey,
                  size: 30.0,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.supervisor_account,
                  color: Colors.grey,
                  size: 30.0,
                ),
              ),
              CircleAvatar(
                backgroundImage: AssetImage(
                  "assets/images/homework3/user.jpeg",
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
