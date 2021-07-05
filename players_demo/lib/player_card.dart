import 'package:flutter/material.dart';
import 'package:players_demo/player.dart';

class PlayerCard extends StatelessWidget {
  final Player player;
  final Function deleteFun;

  const PlayerCard({this.player, this.deleteFun});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey[100],
      elevation: 20,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(player.imageName),
            ),
            // SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  player.name,
                  style: TextStyle(
                    color: Colors.lightBlue[900],
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  player.teamName,
                  style: TextStyle(color: Colors.lightBlue[700], fontSize: 20),
                )
              ],
            ),
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: deleteFun,
              color: Colors.lightBlue[900],
            )
          ],
        ),
      ),
    );
  }
}
