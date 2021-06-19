import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: Text('Flutter demo'),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              print('Settings button pressed');
            },
          ),
          IconButton(
            icon: Icon(Icons.archive),
            onPressed: () {
              print('Archive button pressed');
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Sample Name'),
              accountEmail: Text('sample@example.com'),
              currentAccountPicture: Container(
                  decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('images/ironman.jpeg'),
                  fit: BoxFit.fill,
                ),
              )),
              otherAccountsPictures: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://images-na.ssl-images-amazon.com/images/I/71vntClRfjL._AC_SL1500_.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                CircleAvatar(
                  child: Text(
                    'B',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              title: Text('Settings'),
              leading: Icon(Icons.settings),
              trailing: Icon(Icons.arrow_forward_ios),
            )
          ],
        ),
      ),
      body: Center(
          child: Image(
        image: NetworkImage(
            'https://cdn.britannica.com/30/182830-050-96F2ED76/Chris-Evans-title-character-Joe-Johnston-Captain.jpg'),
      )
          // child: Text(
          //   'Welcome to the flutter app developement',
          //   style: TextStyle(
          //     fontFamily: 'Pacifico',
          //     fontSize: 30,
          //     fontWeight: FontWeight.bold,
          //     color: Colors.green,
          //   ),
          //   textAlign: TextAlign.center,
          // ),
          ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green[900],
        child: Icon(Icons.edit),
        onPressed: () {},
      ),
    ),
  ));
}
