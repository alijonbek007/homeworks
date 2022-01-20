import 'package:flutter/material.dart';

class StepperExample extends StatefulWidget {
  const StepperExample({Key? key}) : super(key: key);

  @override
  _StepperExampleState createState() => _StepperExampleState();
}

class _StepperExampleState extends State<StepperExample> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  var _keyUsername = GlobalKey<FormFieldState>();
  var _keyEmail = GlobalKey<FormFieldState>();
  var _keyPassword = GlobalKey<FormFieldState>();

  int _aktivStep = 0;
  List<Step> steplarimiz = [];

  bool hato = false;
  @override
  void iniState() {
    super.initState();
    // steplarimiz = _steplar();
  }

  Widget build(BuildContext context) {
    steplarimiz = _steplar();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Log in",
          style: TextStyle(color: Colors.pink),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Stepper(
          currentStep: _aktivStep,
          onStepTapped: (bosilganStep) {
            setState(() {
              _aktivStep = bosilganStep;
            });
          },
          
          steps: steplarimiz,
          onStepContinue: () {
            if (_aktivStep < steplarimiz.length) {
              if (_keyUsername.currentState!.validate() && _aktivStep == 0) {
                setState(() {
                  _aktivStep += 1;
                });
              }
              if (_keyEmail.currentState!.validate() && _aktivStep == 1) {
                setState(() {
                  _aktivStep += 1;
                });
              }
              if (_keyPassword.currentState!.validate() && _aktivStep == 2) {
                setState(() {
                  _aktivStep += 1;
                });
              }
            }
          },
          onStepCancel: () {
            if (_aktivStep > 0) {
              setState(() {
                _aktivStep -= 1;
              });
            }
          },
        ),
      ),
    );
  }

  List<Step> _steplar() {
    return [
      // Step - 1 - Usenname
      Step(
        isActive: _aktivStep == 0 ? true : false,
        title: Text("Username kiriting"),
        content: Padding(
          padding: EdgeInsets.all(10.0),
          child: TextFormField(
            key: _keyUsername,
            controller: _usernameController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Username ...",
              labelText: "Username",
            ),
            validator: (usernameText) {
              if (usernameText!.length < 5) {
                return "Kamida 5ta belgi kiriting !!!";
              }
            },
          ),
        ),
        subtitle: Text("Usernameni shu yerda kirit"),
        state: _steplarniTekshir(0),
      ),
      // Step - 2 - email
      Step(
        isActive: _aktivStep == 0 ? true : false,
        title: Text("Email kiriting"),
        content: Padding(
          padding: EdgeInsets.all(10.0),
          child: TextFormField(
            key: _keyEmail,
            controller: _emailController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Eemailmail ...",
              labelText: "",
            ),
            validator: (emailText) {
              if (emailText!.length < 5) {
                return "Kamida 5ta belgi kiriting !!!";
              }
            },
          ),
        ),
        subtitle: Text("Emailni shu yerda kirit"),
        state: _steplarniTekshir(1),
      ),
      // Step - 3 - passwordname
      Step(
        isActive: _aktivStep == 0 ? true : false,
        title: Text("Password kiriting"),
        content: Padding(
          padding: EdgeInsets.all(10.0),
          child: TextFormField(
            key: _keyPassword,
            controller: _passwordController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Password ...",
              labelText: "Password ",
            ),
            validator: (passwordText) {
              if (passwordText!.length < 5) {
                return "Kamida 5ta belgi kiriting !!!";
              }
            },
          ),
        ),
        subtitle: Text("Passwordni shu yerda kirit"),
        state: _steplarniTekshir(2),
      ),
    ];
  }

  _steplarniTekshir(int stepIndex) {
    if (_aktivStep == stepIndex) {
      if (hato) {
        return StepState.error;
      } else {
        return StepState.editing;
      }
    } else {
      return StepState.complete;
    }
  }
}
