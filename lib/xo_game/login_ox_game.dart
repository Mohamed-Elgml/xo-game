import 'package:first_project_in_rootcours/xo_game/ox_home_screen.dart';
import 'package:first_project_in_rootcours/xo_game/players_model.dart';
import 'package:flutter/material.dart';

class LoginXoGame extends StatelessWidget {
  static const String routName = "LOGIN";
  String playerOne = "";
  TextEditingController playerTwo = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextField(
              onChanged: (val) {
                playerOne = val;
              },
              decoration: InputDecoration(
                label: Text("Player One"),
                focusedBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              controller: playerTwo,
              decoration: InputDecoration(
                label: Text("Player Two"),
                prefixIcon: Icon(Icons.email),
                focusedBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    XoGameHome.routName,
                    arguments: PlayersModel(
                      playerOne,
                      playerTwo.text,
                    ),
                  );
                },
                child: Text("Let`s GO"))
          ],
        ),
      ),
    );
  }
}
