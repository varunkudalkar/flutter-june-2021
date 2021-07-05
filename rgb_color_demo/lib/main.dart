import 'package:flutter/material.dart';

void main() {
  var home = Home();
  runApp(MaterialApp(
    home: home,
  ));
}

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var redValue = 0;
  var greenValue = 0;
  var blueValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RGB Color demo'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Slider(
            value: redValue.toDouble(),
            min: 0,
            max: 255,
            activeColor: Colors.red,
            inactiveColor: Colors.red[100],
            divisions: 255,
            label: '$redValue',
            onChanged: (value) {
              setState(() {
                redValue = value.toInt();
              });
              print(value);
            },
          ),
          Slider(
            value: greenValue.toDouble(),
            min: 0,
            max: 255,
            activeColor: Colors.green,
            inactiveColor: Colors.green[100],
            divisions: 255,
            label: '$greenValue',
            onChanged: (value) {
              setState(() {
                greenValue = value.toInt();
              });
              print(value);
            },
          ),
          Slider(
            value: blueValue.toDouble(),
            min: 0,
            max: 255,
            activeColor: Colors.blue,
            inactiveColor: Colors.blue[100],
            divisions: 255,
            label: '$blueValue',
            onChanged: (value) {
              setState(() {
                blueValue = value.toInt();
              });
              print(value);
            },
          ),
          Container(
            height: 200,
            width: 200,
            color: Color.fromRGBO(redValue, greenValue, blueValue, 1),
            child: Center(
                child: Text('(R: $redValue G: $greenValue B: $blueValue)')),
          ),
        ],
      ),
    );
  }
}
