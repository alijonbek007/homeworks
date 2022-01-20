import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class TikTakGame extends StatefulWidget {
  @override
  _TikTakGameState createState() => _TikTakGameState();
}

class _TikTakGameState extends State<TikTakGame> {
  int _Oniki = 0;
  int _Xniki = 0;
  int urinish = 0;
  List holat = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6]
  ];
  bool xmi = true;
  List<String> belgilar = List.generate(9, (index) => "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Tic Tac Toe",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30.0, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "❌-O'yinchi: ${_Xniki}",
                  style: TextStyle(fontSize: 20.0),
                ),
                Text(
                  "⭕️-O'yinchi: ${_Oniki}",
                  style: TextStyle(fontSize: 20.0),
                ),
              ],
            ),
            Container(
              height: 500.0,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(),
                        ],
                        color: Colors.white,
                      ),
                      child: Text(
                        "${belgilar[index]}",
                        style: TextStyle(fontSize: 60.0),
                      ),
                    ),
                    onTap: () {
                      if (belgilar[index] == "") {
                        if (xmi) {
                          setState(() {
                            urinish++;
                            belgilar[index] = "❌";
                            xmi = false;
                          });
                        } else {
                          setState(() {
                            urinish++;
                            belgilar[index] = "⭕️";
                            xmi = true;
                          });
                        }
                      }

                      for (var i = 0; i < 8; i++) {
                        if ((belgilar[holat[i][0]] == belgilar[holat[i][1]]) &&
                            (belgilar[holat[i][2]] == belgilar[holat[i][1]]) &&
                            (belgilar[holat[i][0]] != "")) {
                          setState(() {
                            urinish = 0;
                            if (belgilar[index] == "❌") {
                              _Xniki++;
                            } else {
                              _Oniki++;
                            }
                            AwesomeDialog(
                              dismissOnTouchOutside: false,
                              context: context,
                              animType: AnimType.SCALE,
                              dialogType: DialogType.SUCCES,
                              title: "${belgilar[index]}-o'yinchi yutdi",
                              desc: '🎉🎉🎉🎉🎉🎉',
                              btnOkText: "Yangi O'yin",
                              btnOkOnPress: () {
                                setState(() {
                                  belgilar = List.generate(9, (index) => '');
                                });
                              },
                            )..show();
                          });
                          // break;
                        } else if (urinish == 9) {
                           setState(() {
                               _Xniki++;
                            _Oniki++;
                            AwesomeDialog(
                              dismissOnTouchOutside: false,
                              context: context,
                              animType: AnimType.SCALE,
                              dialogType: DialogType.WARNING,
                              title: 'Durrang',
                              desc: '🤝🤝🤝🤝🤝🤝',
                              btnOkText: "Yangi O'yin",
                              btnOkOnPress: () {
                                setState(() {
                                  belgilar = List.generate(9, (index) => '');
                                });
                              },
                            )..show();
                           });
                            
                          break;
                        }
                      }
                    },
                  );
                },
                itemCount: 9,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _Oniki = 0;
                  _Xniki = 0;
                });
              },
              child: Text("Qayta Hisobla"),
            ),
          ],
        ),
      ),
    );
  }
}
