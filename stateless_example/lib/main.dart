import 'package:flutter/material.dart';

void main() {
  var myApp = MyApp(title: 'This is title');

  runApp(MaterialApp(
    home: myApp,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          this.title,
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.lime,
      ),
      body: Container(
        child: ElevatedButton(
          child: Text('Button1'),
          onPressed: () {
            print('Button1 pressed');
          },
        ),
      ),
    );
  }
}
