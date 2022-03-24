import 'package:flutter/material.dart';
import './rounded_input_field.dart';
import './rounded_password_field.dart';
import './whitespace.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // const MyApp({
  //   Key key,
  // }) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Nirvana - SignUp',
            style: TextStyle(fontSize: 24),
          ),
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            whitespace(),
            RoundedInputField("Enter Your Email"),
            RoundedPasswordField("Enter new password"),
            RoundedPasswordField("Re enter password "),
            ElevatedButton(
              child: Text(
                "SignUp",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: (() {
                print("user tried to login");
              }),
              style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  textStyle: TextStyle(
                      color: Colors.green,
                      fontSize: 14,
                      fontWeight: FontWeight.w500)),
            )
          ],
        ),
      ),
    );
  }
}
