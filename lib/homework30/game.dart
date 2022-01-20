import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  double firstContainer = 350.0;
  double secondContainer = 350.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text("Game",style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        height: 700,
        width: double.infinity,
        child: Column(
          children: [
            GestureDetector(
              child: Container(
                height: firstContainer,
                width: double.infinity,
                color: Colors.red,
              ),
              onTap: () {
                setState(() {
                  if (firstContainer != 700.0) {
                    firstContainer += 25.0;
                    secondContainer -= 25.0;
                  } else if(firstContainer==700){
                    AwesomeDialog(
                      dismissOnTouchOutside: false,
                      context: context,
                      animType: AnimType.SCALE,
                      dialogType: DialogType.SUCCES,
                      title: "First Gamer Win",
                      desc: '🎉🎉🎉🎉🎉🎉',
                      btnOkText: "Yangi O'yin",
                      btnOkOnPress: () {
                        setState(() {
                          firstContainer = 350.0;
                          secondContainer = 350.0;
                        });
                      },
                    )..show();
                  }
                });
              },
            ),
            GestureDetector(
              child: Container(
                height: secondContainer,
                width: double.infinity,
                color: Colors.blue,
              ),
              onTap: () {
                setState(() {
                  if (secondContainer != 700.0) {
                    firstContainer -= 25.0;
                    secondContainer += 25.0;
                  } else if(secondContainer==700.0) {
                    AwesomeDialog(
                      dismissOnTouchOutside: false,
                      context: context,
                      animType: AnimType.SCALE,
                      dialogType: DialogType.SUCCES,
                      title: "Second Gamer Win",
                      desc: '🎉🎉🎉🎉🎉🎉',
                      btnOkText: "Yangi O'yin",
                      btnOkOnPress: () {
                        setState(() {
                          firstContainer = 350.0;
                          secondContainer = 350.0;
                        });
                      },
                    )..show();
                  }
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
