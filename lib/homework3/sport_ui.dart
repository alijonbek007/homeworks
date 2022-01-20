import 'package:flutter/material.dart';
class SportUi extends StatefulWidget {
  
  @override
  _SportUiState createState() => _SportUiState();
}

class _SportUiState extends State<SportUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: Colors.blue[100],
                  child: Text(
                    "Hey Brain",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      
                    ),
                  ),
                ),
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                      image: AssetImage("assets/images/user.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Text(
                  "What are you",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 28,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Text(
                  "up to today?",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 28,
                  ),
                ),
              ],
            ),
            Container(
              child:Column(
                    children: [
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 130,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.blue[300],
                              borderRadius: BorderRadius.circular(25),
                              image: DecorationImage(
                                image: AssetImage("assets/dars7_img/swim.png"),
                                
                              ),
                            ),
                          ),
                          Container(
                            height: 130,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.orange[300],
                              borderRadius: BorderRadius.circular(25),
                              image: DecorationImage(
                                image: AssetImage("assets/dars7_img/run.png"),
                                
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            
                            height: 130,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.amber[900],
                              borderRadius: BorderRadius.circular(25),
                              image: DecorationImage(
                                image: AssetImage("assets/dars7_img/footballl.png"),
                                
                              ),
                            ),
                          ),
                          Container(
                            height: 130,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.purpleAccent,
                              borderRadius: BorderRadius.circular(25),
                              image: DecorationImage(
                                image: AssetImage("assets/dars7_img/basketball.png"),
                                
                              ),
                            ),
                          ),
                        ],
                      ),
                     SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 130,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.indigoAccent,
                              borderRadius: BorderRadius.circular(25),
                              image: DecorationImage(
                                image: AssetImage("assets/dars7_img/cy.png"),
                                
                              ),
                            ),
                          ),
                          Container(
                            height: 130,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.pink[400],
                              borderRadius: BorderRadius.circular(25),
                              image: DecorationImage(
                                image: AssetImage("assets/dars7_img/tenniss.png"),
                                
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.home),
                          Icon(Icons.stacked_bar_chart),
                          Icon(Icons.mark_chat_unread_outlined),
                          Icon(Icons.home),
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