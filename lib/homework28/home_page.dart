import 'package:flutter/material.dart';

class Birinchi extends StatelessWidget {
  const Birinchi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 170, 30, 60),
            child: Container(
              height: 200,
              width: 340,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/homework28/cofeee.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Center(child: Text("Making your days with",style: TextStyle(fontSize: 27,),),),
          Center(child: Text("our coffee.",style: TextStyle(fontSize: 27,),),),
          Center(child: Text("The best grain, the finest roast,",style: TextStyle(fontSize: 2,),),),
          Center(child: Text("the most powerful flavor.",style: TextStyle(fontSize: 27,),),),
        ],
      ),
    );
  }
}
