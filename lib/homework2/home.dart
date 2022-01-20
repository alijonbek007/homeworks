import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 35,),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                  SizedBox(width: 30,),
                  Text(
                    "FW19",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w900
                    ),
                  ),
                  SizedBox(width: 30,),
                  Icon(
                    Icons.window_outlined,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 150,
                        height: 280,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/homework2/rasm01.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text(
                        "REPRESENR X",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w900
                        ),
                      ),
                      Text(
                        "LESSONS HOODIE",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w900
                        ),
                      ),
                      Text(
                        "&215.00 GBP",
                        
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        width: 150,
                        height: 260,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/homework2/rasm022.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text(
                        "DINNER SHIRT",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w900
                        ),
                      ),
                      Text(
                        "SPLIT",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w900
                        ),
                      ),
                      Text(
                        "&215.00 GBP",
                        
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 150,
                        height: 280,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/homework2/rasm033.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text(
                        "T-SHIRT",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w900
                        ),
                      ),
                      Text(
                        "WASHED BLACK",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w900
                        ),
                      ),
                      Text(
                        "&100.00 GBP",
                        
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        
                        width: 150,
                        height: 280,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/homework2/rasm04.jpeg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text(
                        "LOGO SWEATER",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w900
                        ),
                      ),
                      Text(
                        "RED MARBLE",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w900
                        ),
                      ),
                      Text(
                        "&200.00 GBP",
                        
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