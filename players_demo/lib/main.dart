import 'package:flutter/material.dart';
import 'package:players_demo/player_card.dart';
import 'player.dart';

void main() {
  var playerHome = PlayerHome();
  runApp(MaterialApp(
    home: playerHome,
  ));
}

class PlayerHome extends StatefulWidget {
  const PlayerHome({Key key}) : super(key: key);

  @override
  _PlayerHomeState createState() => _PlayerHomeState();
}

class _PlayerHomeState extends State<PlayerHome> {
  List<Player> players = [
    Player(name: 'Rohit Sharma', teamName: 'Mumbai Indians', imageName: ''),
    Player(name: 'MS Dhoni', teamName: 'Chennai Super Kings', imageName: ''),
    Player(
        name: 'Virat Kohli',
        teamName: 'Royal Challengers Banglore',
        imageName:
            'https://m.cricbuzz.com/a/img/v1/192x192/i1/c170661/virat-kohli.jpg'),
    Player(name: 'Rishabh Pant', teamName: 'Delhi Capitals', imageName: ''),
    Player(
        name: 'Elon Morgan', teamName: 'Kolkata Knight Riders', imageName: ''),
    Player(name: 'Sanju Samson', teamName: 'Rajasthan Royals', imageName: ''),
    Player(name: 'KL Rahul', teamName: 'Punjab Kings', imageName: ''),
    Player(
        name: 'David Warner', teamName: 'SunRisers Hyderabad', imageName: ''),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text('My Players'),
        backgroundColor: Colors.lightBlue[900],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: players
              .map((player) => PlayerCard(
                    player: player,
                    deleteFun: () {
                      setState(() {
                        players.remove(player);
                      });
                    },
                  ))
              .toList(),
        ),
      ),
    );
  }
}
