import 'package:flutter/material.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  List<Map<String, dynamic>> questionAndAnwer = [
    {
      "savol": "1. What ___ your name?",
      "javoblar": [
        {"matn": "are", "togrimi": false},
        {"matn": "am", "togrimi": false},
        {"matn": "is", "togrimi": true},
        {"matn": "I", "togrimi": false},
      ]
    },
    {
      "savol": "2. I am __ doctor",
      "javoblar": [
        {"matn": "are", "togrimi": false},
        {"matn": "is", "togrimi": false},
        {"matn": "a", "togrimi": true},
        {"matn": "from", "togrimi": false},
      ]
    },
    {
      "savol": "3. This flowers ___ beatiful",
      "javoblar": [
        {"matn": "a", "togrimi": false},
        {"matn": "is", "togrimi": false},
        {"matn": "more", "togrimi": false},
        {"matn": "are", "togrimi": true},
      ]
    },
    {
      "savol": "4. Where ___ you from?",
      "javoblar": [
        {"matn": "a", "togrimi": false},
        {"matn": "is", "togrimi": false},
        {"matn": "they", "togrimi": false},
        {"matn": "are", "togrimi": true},
      ]
    },
    {
      "savol": "5. What ___ you do?",
      "javoblar": [
        {"matn": "are", "togrimi": false},
        {"matn": "do", "togrimi": true},
        {"matn": "is", "togrimi": false},
        {"matn": "I", "togrimi": false},
      ]
    },
  ];

  int savolRaqami = 0;
  int natija = 0;

  void answerQuestion(bool togrimi) {
    print(togrimi);
    setState(() {
      savolRaqami++;
      if (togrimi) {
        natija++;
      }
    });
  }

  void restart() {
    setState(() {
      savolRaqami = 0;
      natija = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ingliz Tili Quiz"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: savolRaqami < questionAndAnwer.length
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      questionAndAnwer[savolRaqami]["savol"],
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => answerQuestion(
                          questionAndAnwer[savolRaqami]["javoblar"][0]
                              ["togrimi"]),
                      child: Text(
                        questionAndAnwer[savolRaqami]["javoblar"][0]["matn"],
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => answerQuestion(
                          questionAndAnwer[savolRaqami]["javoblar"][1]
                              ["togrimi"]),
                      child: Text(
                        questionAndAnwer[savolRaqami]["javoblar"][1]["matn"],
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => answerQuestion(
                          questionAndAnwer[savolRaqami]["javoblar"][2]
                              ["togrimi"]),
                      child: Text(
                        questionAndAnwer[savolRaqami]["javoblar"][2]["matn"],
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => answerQuestion(
                          questionAndAnwer[savolRaqami]["javoblar"][3]
                              ["togrimi"]),
                      child: Text(
                        questionAndAnwer[savolRaqami]["javoblar"][3]["matn"],
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                )
              : Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Natija: $natija/${questionAndAnwer.length}",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      ElevatedButton.icon(
                        onPressed: restart,
                        icon: Icon(Icons.restart_alt),
                        label: Text("RESTART"),
                      )
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
