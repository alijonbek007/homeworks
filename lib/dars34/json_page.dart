import 'dart:convert';

import 'package:flutter/material.dart';

class MyLocalJsonPage extends StatefulWidget {
  @override
  _MyLocalJsonPageState createState() => _MyLocalJsonPageState();
}

class _MyLocalJsonPageState extends State<MyLocalJsonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Work with JSON in Dart"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: MediaQuery.of(context).size.height -84,
              child: FutureBuilder(
                future: malumotniOlibKel(),
                builder: (context, AsyncSnapshot snap) {
                  return snap.hasData
                      ? ListView.builder(
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: ListTile(
                                title: Text("${snap.data[index]['car_name']}"),
                                subtitle:
                                    Text("Year: ${snap.data[index]['year']}"),
                                leading: CircleAvatar(
                                  backgroundColor:
                                      Color(int.parse(snap.data[index]['color'])),
                                  backgroundImage:
                                      NetworkImage(snap.data[index]['photo']),
                                ),
                                trailing: Text(
                                    "${snap.data[index]['model'][0]['car_model']}"),
                              ),
                            );
                          },
                          itemCount: snap.data.length,
                        )
                      : Center(
                          child: CircularProgressIndicator(),
                        );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<List> malumotniOlibKel() async {
    // 1-step jsonni string korinishida olib kel
    var kelganJson = await DefaultAssetBundle.of(context)
        .loadString("assets/data/data.json");
    // 2-step  json stringni json.decode orqali mapga ogir
    List mashinaList = jsonDecode(kelganJson.toString());
    // 3- step jsonni olibn ishlat
    // debugPrint(mashinaList[0]["car_name"]);
    return mashinaList;
  }
}
