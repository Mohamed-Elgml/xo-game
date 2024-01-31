import 'package:first_project_in_rootcours/xo_game/login_ox_game.dart';
import 'package:flutter/material.dart';
import 'xo_game/ox_home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: LoginXoGame.routName,
      debugShowCheckedModeBanner: false,
      routes: {

        LoginXoGame.routName: (context) => LoginXoGame(),
        XoGameHome.routName:(context)=>XoGameHome(),
      },
    );
  }
}
