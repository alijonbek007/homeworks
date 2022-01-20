import 'package:flutter/material.dart';
import 'package:homework/homework1/a.dart';
class PageB extends StatefulWidget {

  @override
  _PageBState createState() => _PageBState();
}

class _PageBState extends State<PageB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.brown[100],
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/homework1/asos.png'),
                  fit: BoxFit.cover
                ),
              ),
              child: Container(
                margin: EdgeInsets.only(top: 40, right: 20),
                child: Text(
                  "Log in",
                  textAlign: TextAlign.end,
                   style: TextStyle(
                     fontSize: 17,
                     color: Colors.black
                   ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30, left: 20),
              width: double.infinity,
              height: 359.2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                   "Exceptional",
                    style: TextStyle(
                    fontSize: 25,
                    ),
                  ),
                  Text(
                    "Modern Clothings",
                    style: TextStyle(
                    fontSize: 25,
                    ),
                  ), 
                  Container(
                    margin: EdgeInsets.only(top: 30, bottom: 30),
                    width: 60,
                    height: 1,
                    color: Colors.black,
                  ),
                  Text(
                   "Shop for exceptional modern clothings",
                  ),
                  Text(
                    "for your everyday life",
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40, bottom: 30),
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Dars1()));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black54,
                        shadowColor: Colors.black,
                        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0)),
                      ),
                      child: Text(
                        "Go Shopping",
                      ),
                    ),
                  ),
                  Container(
                    width: 70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}