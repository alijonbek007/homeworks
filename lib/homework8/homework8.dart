import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class InputWidgetlar extends StatefulWidget {
  

  @override
  _InputWidgetlarState createState() => _InputWidgetlarState();
}

class _InputWidgetlarState extends State<InputWidgetlar> {
  String _inputdagiTexta = "";
  String _inputdagiTextb = "";
  String _inputdagiTextc = "example@gmail.com";
  String _inputdagiTextd = "123456789";
  String _inputdagiText ='bosh text';
  final nameHolder = TextEditingController();

  clearTextInput() {
    nameHolder.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Input Widgetlari",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: c(),
    );
  }

  Widget a() {
    return SingleChildScrollView(
      child: Form(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                maxLength: 100,
                cursorColor: Colors.red,
                // obscureText: true,
                //initialValue: "Parolni kiriting...",
                decoration: InputDecoration(
                  hintText: "Email ...",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  filled: true,
                  fillColor: Colors.blue[100],
                  labelText: "Email...",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget b() {
    return ListView(
      children: [
        
        Padding(
          padding: EdgeInsets.all(20.0),
          child: TextField(
            controller: nameHolder,
            autocorrect: true,
            keyboardType: TextInputType.text,
            autofocus: true,
            maxLines: 4,
            //maxLength: 40,
            cursorColor: Colors.yellow,
            onChanged: (v) {
              setState(() {
                _inputdagiText = v;
              });
            },
            onSubmitted: (v) {
              print("Submit Qilindi: $v");
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Izohni qoldiring",
              labelText: "Izoh",
              icon: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.add,
                ),
              ),
              prefixIcon: IconButton(
                onPressed: clearTextInput,
                icon: Icon(
                  Icons.delete,
                ),
              ),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {});
                },
                icon: Icon(Icons.send),
              ),
            ),
          ),
        ),
        Container(
          height: 200.90,
          color: Colors.grey,
          child: Center(
            child: Text(
              _inputdagiText,
              style: TextStyle(
                color: Colors.white,
                fontSize: 33.0,
              ),
            ),
          ),
        ),
        // RaisedButton(
        //         onPressed: clearTextInput,
        //         color: Colors.green,
        //         textColor: Colors.white,
        //         padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        //         child: Text('Click Here To Clear Text Field Entered Data'),
        //       ),
      ],
    );
  }

  Widget c() {
    return Form(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(height: 50.0,),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              onChanged: (v) {
                _inputdagiTexta = v;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Emailingiz...",
                labelText: "Email",
                labelStyle: TextStyle(
                  color: Colors.black,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              onChanged: (a) {
                _inputdagiTextb = a;
              },
              obscureText: true,
              maxLength: 16,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Passwordingiz...",
                labelText: "Pasword",
                labelStyle: TextStyle(
                  color: Colors.black,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
              onPressed: () {
                if (_inputdagiTexta == _inputdagiTextc &&
                    _inputdagiTextb == _inputdagiTextd) {
                  AwesomeDialog(
                    context: context,
                    dialogType: DialogType.SUCCES,
                    animType: AnimType.BOTTOMSLIDE,
                    title: 'Your email has been successfully generated !',
                    btnOkOnPress: () {},
                  )..show();
                }else{
                  AwesomeDialog(
                    context: context,
                    dialogType: DialogType.ERROR,
                    animType: AnimType.BOTTOMSLIDE,
                    title: 'The email address or password you entered is incorrect',
                    btnCancelOnPress: () {},
                    
                  )..show();
                }
              },
              child: Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
