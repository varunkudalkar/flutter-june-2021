import 'package:flutter/material.dart';

void main() {
  var profile = Profile();
  runApp(MaterialApp(
    home: profile,
  ));
}

class Profile extends StatelessWidget {
  const Profile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(16, 40, 16, 0),
        child: Column(
          children: [
            Center(
              child: CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage('https://i.pravatar.cc/300'),
                backgroundColor: Colors.grey,
              ),
            ),
            Divider(
              height: 60,
              color: Colors.white,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    'NAME',
                    style: TextStyle(
                      color: Colors.grey,
                      letterSpacing: 2,
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Text(
                    'John Doe',
                    style: TextStyle(
                      color: Colors.amber[200],
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    'LOCATION',
                    style: TextStyle(
                      color: Colors.grey,
                      letterSpacing: 2,
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Text(
                    'Banglore, India',
                    style: TextStyle(
                      color: Colors.amber[200],
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    'PHONE',
                    style: TextStyle(
                      color: Colors.grey,
                      letterSpacing: 2,
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Text(
                    '+91 1234567890',
                    style: TextStyle(
                      color: Colors.amber[200],
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    'EMAIL',
                    style: TextStyle(
                      color: Colors.grey,
                      letterSpacing: 2,
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Text(
                    'johndoe@abc.com',
                    style: TextStyle(
                      color: Colors.amber[200],
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    ),
                  ),
                ),
              ],
            ),
            Divider(
              height: 30,
              color: Colors.white,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    'PROJECT',
                    style: TextStyle(
                      color: Colors.grey,
                      letterSpacing: 2,
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Text(
                    'In this project I have worked on this snd this modules.',
                    style: TextStyle(
                      color: Colors.amber[200],
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    ),
                  ),
                ),
              ],
            ),

            // SizedBox(
            //   width: 200,
            //   height: 300,
            //   child: ElevatedButton(
            //     child: Text('Click me'),
            //     onPressed: () {},
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
