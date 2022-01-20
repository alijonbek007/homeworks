import 'package:flutter/material.dart';

class CoffeUi extends StatefulWidget {
  const CoffeUi({Key? key}) : super(key: key);

  @override
  _CoffeUiState createState() => _CoffeUiState();
}

class _CoffeUiState extends State<CoffeUi> with TickerProviderStateMixin {
  TabController? _controllerTab;

  @override
  void initState() {
    _controllerTab = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 90, left: 60),
            child: Text(
              "Select",
              style: TextStyle(fontSize: 27.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60),
            child: Text(
              "Coffee",
              style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 60, top: 37),
            child: Container(
              width: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 20,
                    height: 6,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Colors.black),
                  ),
                  Icon(
                    Icons.circle,
                    size: 7,
                    color: Colors.black54,
                  ),
                  Icon(
                    Icons.circle,
                    size: 6,
                    color: Colors.black45,
                  ),
                  Icon(
                    Icons.circle,
                    size: 5,
                    color: Colors.black38,
                  ),
                  Icon(
                    Icons.circle,
                    size: 5,
                    color: Colors.black26,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 65, top: 37),
            child: Container(
              height: 520,
              child: Column(
                children: [
                  Expanded(
                    child: TabBarView(
                      children: [
                        Container(
                          height: 490,
                          child: Stack(
                            children: [
                              Positioned(
                                child: Container(
                                  height: 430,
                                  width: 260,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(35)),
                                ),
                                top: 0,
                              ),
                              Positioned(
                                child: Container(
                                  height: 280,
                                  width: 240,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/homework24/coffee.png"),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(35),
                                  ),
                                ),
                                top: 0,
                                right: 67,
                              ),
                              Positioned(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Coppuccino",
                                      style: TextStyle(
                                          fontSize: 17.0, color: Colors.brown),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      "Lattesso",
                                      style: TextStyle(
                                          fontSize: 32.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                left: 35,
                                top: 300,
                              ),
                              Positioned(
                                child: Container(
                                  height: 60,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: Colors.black54),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "\$",
                                        style: TextStyle(
                                            fontSize: 13.0, color: Colors.grey),
                                      ),
                                      Text(
                                        "25",
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                                bottom: 30,
                                right: 55,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 490,
                          child: Stack(
                            children: [
                              Positioned(
                                child: Container(
                                  height: 430,
                                  width: 260,
                                  decoration: BoxDecoration(
                                      color: Colors.pink.shade200,
                                      borderRadius: BorderRadius.circular(35)),
                                ),
                                top: 0,
                              ),
                              Positioned(
                                child: Container(
                                  height: 280,
                                  width: 240,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/homework24/coffee.png"),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(35),
                                  ),
                                ),
                                top: 0,
                                right: 67,
                              ),
                              Positioned(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Coppuccino",
                                      style: TextStyle(
                                          fontSize: 17.0, color: Colors.brown),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      "Lattesso",
                                      style: TextStyle(
                                          fontSize: 32.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                left: 35,
                                top: 300,
                              ),
                              Positioned(
                                child: Container(
                                  height: 60,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: Colors.black54),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "\$",
                                        style: TextStyle(
                                            fontSize: 13.0, color: Colors.grey),
                                      ),
                                      Text(
                                        "25",
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                                bottom: 30,
                                right: 55,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 490,
                          child: Stack(
                            children: [
                              Positioned(
                                child: Container(
                                  height: 430,
                                  width: 260,
                                  decoration: BoxDecoration(
                                      color: Colors.teal.shade200,
                                      borderRadius: BorderRadius.circular(35)),
                                ),
                                top: 0,
                              ),
                              Positioned(
                                child: Container(
                                  height: 280,
                                  width: 240,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/homework24/coffee.png"),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(35),
                                  ),
                                ),
                                top: 0,
                                right: 67,
                              ),
                              Positioned(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Coppuccino",
                                      style: TextStyle(
                                          fontSize: 17.0, color: Colors.brown),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      "Lattesso",
                                      style: TextStyle(
                                          fontSize: 32.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                left: 35,
                                top: 300,
                              ),
                              Positioned(
                                child: Container(
                                  height: 60,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: Colors.black54),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "\$",
                                        style: TextStyle(
                                            fontSize: 13.0, color: Colors.grey),
                                      ),
                                      Text(
                                        "25",
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                                bottom: 30,
                                right: 55,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 490,
                          child: Stack(
                            children: [
                              Positioned(
                                child: Container(
                                  height: 430,
                                  width: 260,
                                  decoration: BoxDecoration(
                                      color: Colors.orange.shade200,
                                      borderRadius: BorderRadius.circular(35)),
                                ),
                                top: 0,
                              ),
                              Positioned(
                                child: Container(
                                  height: 280,
                                  width: 240,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/homework24/coffee.png"),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(35),
                                  ),
                                ),
                                top: 0,
                                right: 67,
                              ),
                              Positioned(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Coppuccino",
                                      style: TextStyle(
                                          fontSize: 17.0, color: Colors.brown),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      "Lattesso",
                                      style: TextStyle(
                                          fontSize: 32.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                left: 35,
                                top: 300,
                              ),
                              Positioned(
                                child: Container(
                                  height: 60,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: Colors.black54),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "\$",
                                        style: TextStyle(
                                            fontSize: 13.0, color: Colors.grey),
                                      ),
                                      Text(
                                        "25",
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                                bottom: 30,
                                right: 55,
                              ),
                            ],
                          ),
                        ),
                      ],
                      controller: _controllerTab,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 60,
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.white,
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              setState(() {
                                _controllerTab;
                              });
                            },
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 130,
                        child: TabBar(
                          // indicator: BoxDecoration(
                          //     color: Colors.orange.shade200,
                          //     borderRadius: BorderRadius.circular(8.0)),
                          controller: _controllerTab,
                          // indicator: BoxDecoration(
                          //   color: Colors.transparent,
                          // ),
                          indicatorColor: Colors.transparent,
                          labelColor: Colors.black,
                          unselectedLabelColor: Colors.grey,
                          isScrollable: true,
                          // indicatorWeight: 5.0,
                          tabs: [
                            Tab(
                              child: Row(
                                children: [
                                  Text(
                                    "Coppuccino",
                                  ),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  Icon(
                                    Icons.circle,
                                    size: 6,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                            ),
                            Tab(
                              child: Row(
                                children: [
                                  Text(
                                    "Americano",
                                  ),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  Icon(
                                    Icons.circle,
                                    size: 6,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                            ),
                            Tab(
                              child: Row(
                                children: [
                                  Text(
                                    "Late",
                                  ),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  Icon(
                                    Icons.circle,
                                    size: 6,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                            ),
                            Tab(
                              child: Row(
                                children: [
                                  Text("Arabic"),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  Icon(
                                    Icons.circle,
                                    size: 6,
                                    color: Colors.grey,
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
            ),
          )

          // Padding(
          //   padding: const EdgeInsets.only(left: 60,top: 37),
          //   child: Container(
          //     height: 420,
          //     width: MediaQuery.of(context).size.width-60,
          //     color: Colors.lime,
          //     child: ListView.builder(itemBuilder: itemBuilder),
          //   ),
          // ),
        ],
      ),
    );
  }
}
