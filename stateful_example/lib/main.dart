import 'package:flutter/material.dart';

void main() {
  var home = Home();
  runApp(MaterialApp(home: home));
}

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var username = '';
  var textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful Widget'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: textController,
              decoration: InputDecoration(
                  hintText: 'Enter your name',
                  labelText: 'User name',
                  border: OutlineInputBorder()),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  username = textController.text;
                });
                print('Username: $username');
              },
              child: Text('Say hi!'),
            ),
            Text('Hello, $username', style: TextStyle(fontSize: 25))
          ],
        ),
      ),
    );
  }
}
