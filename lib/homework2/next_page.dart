import 'package:flutter/material.dart';
import 'package:homework/homework2/new_page.dart';

class NextPage extends StatelessWidget {
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
                    Icons.dehaze_rounded,
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
                    Icons.search_sharp,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 420,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/homework2/asoss.png"),
                  fit: BoxFit.cover
                ),
              ),
              child: Center(
                child: Text(
                  'FW19',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w900
                  ),
                  
                ),
              ),
            ),
            SizedBox(height: 20.2,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>NewPage()));
              },
              child: Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/homework2/asoss3.png"),
                    fit: BoxFit.cover
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    
                    Container(
                      padding: EdgeInsets.only(right: 200, top: 50),
                      child: Text(
                        'THE',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w900
                        ),
                      ),
                    ),
                    Text(
                      'TERRIER',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w900
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}