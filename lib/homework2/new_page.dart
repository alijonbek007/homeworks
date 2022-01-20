

import 'package:flutter/material.dart';
import 'package:homework/homework2/home.dart';

class NewPage extends StatelessWidget {
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
                  Text(
                    "REPRESENT",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w900
                    ),
                  ),
                  Icon(
                    Icons.favorite_outline,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            Container(
              width: 350,
              height: 240,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/homework2/shoes.png"),
                  fit: BoxFit.contain,
                ),
              ),
              child: Text(
                'TERRIER          BLACK',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w900
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(width: 30,),
                Text(
                  "9",
                  style: TextStyle(
                    color: Colors.grey[400],
                    
                    fontWeight: FontWeight.w900
                  ),
                ),
                SizedBox(width: 30,),
                Text(
                  'COLOR',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w900
                  ),
                ),
                SizedBox(width: 18,),
                ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                          shadowColor: Colors.red,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(20),
                        ),
                  child: Icon(
                    Icons.circle,
                    size: 10,
                    color: Colors.red,
                  ),
                ),
                SizedBox(width: 14,),
                ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                          primary: Colors.yellow,
                          shadowColor: Colors.red,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(15),
                        ),
                  child: Icon(
                    Icons.circle,
                    size: 20,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: 14,),
                ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    shadowColor: Colors.red,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(25),
                  ),
                  child: Container(),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              width: 340,
              height: 0.5,
              color: Colors.black,
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 3,),
                Icon(Icons.arrow_right_rounded ),
                Text(
                  "10",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900
                  ),
                ),
                 Icon(Icons.arrow_left_rounded ),
                 SizedBox(width: 20,),
                 Text(
                  'SIZE',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w900
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              width: 340,
              height: 0.5,
              color: Colors.black,
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 25,),
                Text(
                  "11",
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontWeight: FontWeight.w900
                  ),
                ),
                 
                 SizedBox(width: 25,),
                 Text(
                  'The Terrier. Alightweight, hand mode',
                  style: TextStyle(
                    color: Colors.grey[400],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 70,),
                Text(
                  'sneaker crafted for the every day',
                  style: TextStyle(
                    color: Colors.grey[400],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 25,),
                Text(
                  "12",
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontWeight: FontWeight.w900
                  ),
                ),
                SizedBox(width: 25,),
                Text(
                  'Featuring a chunky sock insert, brethable',
                  style: TextStyle(
                    color: Colors.grey[400],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 70,),
                Text(
                  'membrane with motte body cage.',
                  style: TextStyle(
                    color: Colors.grey[400],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 25,),
                Text(
                  "13",
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontWeight: FontWeight.w900
                  ),
                ),
                SizedBox(width: 25,),
                Text(
                  '',
                  style: TextStyle(
                    color: Colors.grey[400],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 70,),
                Text(
                  'Sitting on a sloping Vibram sole unit,',
                  style: TextStyle(
                    color: Colors.grey[400],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 70,),
                Text(
                  'elements of the brand, DNA include,',
                  style: TextStyle(
                    color: Colors.grey[400],
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                SizedBox(width: 70,),
                Text(
                  'contrasting 3M reflective touchers',
                  style: TextStyle(
                    color: Colors.grey[400],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 70,),
                Text(
                  'mattred piping and hiking laces threaded',
                  style: TextStyle(
                    color: Colors.grey[400],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 20,),
                ElevatedButton(
                  
                  onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                    
                  }, 
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0),),
                          ),
                          
                  ),
                  child:Center(
                    child: Column(
                      children: [
                        SizedBox(height: 15,),
                        Row(
                          children: [
                            SizedBox(width: 90,),
                            Text(
                              "&300.00 GBP",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(width: 90,),
                          ],
                        ),
                        SizedBox(height: 15,),
                      ],
                    ),
                  ),
                ),
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}