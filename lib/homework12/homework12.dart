import 'dart:math';
import 'dart:async';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class GameNum extends StatefulWidget {
  const GameNum({Key? key}) : super(key: key);

  @override
  _GameNumState createState() => _GameNumState();
}

class _GameNumState extends State<GameNum> {
  int randomSon = Random().nextInt(10) + 1;
  List<bool> buttonHoloti = List.generate(10, (index) => true);
  int urinish = 0;
  Timer? _timer;
  int _start = 60;

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  void onTap() {}
  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Son Top",
              style: TextStyle(color: Colors.purple),
            ),
            Text(
              "Time: $_start",
              style: TextStyle(color: Colors.purple),
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: listOfButton(context),
    );
  }

  Widget listOfButton(BuildContext ctx) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        childAspectRatio: 1.7,
      ),
      itemBuilder: (ctx, index) {
        return ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.green),
          child: Text("${index + 1}"),
          onPressed: buttonHoloti[index] 
              ? () {
                  print(randomSon);
                  startTimer();
                  ++urinish;
                  if ((index + 1) > randomSon) {
                    for (var i = index; i < 10; i++) {
                      setState(() {
                        buttonHoloti[i] = false;
                      });
                    }
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.WARNING,
                      animType: AnimType.BOTTOMSLIDE,
                      title: "Siz tanlagan son men o'ylagan sondan katta",
                      desc: 'Topishga harakat qiling',
                      btnCancelOnPress: () {},
                    )..show();
                  } else if ((index + 1) < randomSon) {
                    for (var i = 0; i <= index; i++) {
                      setState(() {
                        buttonHoloti[i] = false;
                      });
                    }

                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.WARNING,
                      animType: AnimType.BOTTOMSLIDE,
                      title: "Siz tanlagan son men o'ylagan sondan kichik",
                      desc: 'Topishga harakat qiling',
                      btnCancelOnPress: () {},
                    )..show();
                  } else {
                    int a = _start;
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.SUCCES,
                      animType: AnimType.BOTTOMSLIDE,
                      title: "Tog'ri",
                      desc:
                          'barakalla siz ${urinish} ta urinishda topdingiz\nJami ketqazgan vaqtingiz ${60 - a} second',
                      btnOkOnPress: () {
                        setState(() {
                          randomSon = Random().nextInt(10) + 1;
                          buttonHoloti = List.generate(10, (index) => true);
                          _timer;
                          _start = 60;
                        });
                      },
                    )..show();
                    setState(() {
                      randomSon = Random().nextInt(10) + 1;
                      buttonHoloti = List.generate(10, (index) => true);
                    });
                  }
                }
              : null,
        );
      },
      itemCount: 10,
    );
  }
}