import 'package:flutter/material.dart';

void main() {
  var home = Home();
  runApp(MaterialApp(
    home: home,
  ));
}

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layouts'),
      ),
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   crossAxisAlignment: CrossAxisAlignment.stretch,
      //   children: [
      //     Text(
      //       'Hello world!',
      //       style: TextStyle(fontSize: 30),
      //     ),
      //     Text(
      //       'Hello Flutter!',
      //       style: TextStyle(fontSize: 30),
      //     ),
      //     Text(
      //       "Welcome to today's session, happy coding",
      //       style: TextStyle(fontSize: 30),
      //       textAlign: TextAlign.center,
      //     ),
      //     ElevatedButton(
      //       onPressed: () {},
      //       child: Text('Click me'),
      //     ),
      //   ],
      // ),

      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Icon(Icons.add),
          Icon(Icons.remove),
          Icon(Icons.edit),
          Icon(Icons.share),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('1', style: TextStyle(fontSize: 30)),
              Text('2', style: TextStyle(fontSize: 30)),
            ],
          )
        ],
      ),
    );
  }
}
