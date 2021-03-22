import 'package:flutter/material.dart';
import 'package:flutterdavis/homepage.dart';
import 'package:flutterdavis/fungsi.dart';

// class Func {
//   final String email;
//   final String password;

//   Func({
//     this.email,
//     this.password,
//   });
// }

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String emailInput;
  String passwordInput;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("DavisApp")),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(50),
                child: Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600,
                      fontSize: 40),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: TextField(
                  onChanged: (text) {
                    emailInput = text;
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    labelText: "Email",
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: TextField(
                  onChanged: (text) {
                    passwordInput = text;
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    labelText: "Password",
                  ),
                ),
              ),
              // tempikan
              Container(
                height: 70,
                width: 150,
                padding: EdgeInsets.all(10),
                child: RaisedButton(
                  textColor: Colors.white,
                  color: Colors.orange,
                  child: Text("Login"),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => Home(
                              email: emailInput,
                              password: passwordInput,
                            )));
                  },
                ),
              ),
              SizedBox(
                height: 125,
              ),
              Text("Don't you have an account??? Create Account")
            ],
          ),
        ));
  }
}
