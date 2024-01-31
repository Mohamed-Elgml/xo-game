import 'package:first_project_in_rootcours/xo_game/board_btn.dart';
import 'package:first_project_in_rootcours/xo_game/players_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class XoGameHome extends StatefulWidget {
  static const String routName="LOGIN";
  const XoGameHome({Key? key}) : super(key: key);

  @override
  State<XoGameHome> createState() => _XoGameHomeState();
}

class _XoGameHomeState extends State<XoGameHome> {
  int score1 = 0;
  int score2 = 0;
  int counter = 1;
  List<String> boardState = [
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
  ];

  @override
  Widget build(BuildContext context) {
    PlayersModel model=ModalRoute.of(context)!.settings.arguments as PlayersModel;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "XO GAME",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          model.player1Name,
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "$score1",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          model.player2Name,
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "$score2",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BoardBtn(
                  label: boardState[0],
                  index: 0,
                  onClick: onBoardBtnClick,
                ),
                BoardBtn(
                  label: boardState[1],
                  index: 1,
                  onClick: onBoardBtnClick,
                ),
                BoardBtn(
                  label: boardState[2],
                  index: 2,
                  onClick: onBoardBtnClick,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BoardBtn(
                  label: boardState[3],
                  index: 3,
                  onClick: onBoardBtnClick,
                ),
                BoardBtn(
                  label: boardState[4],
                  index: 4,
                  onClick: onBoardBtnClick,
                ),
                BoardBtn(
                  label: boardState[5],
                  index: 5,
                  onClick: onBoardBtnClick,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BoardBtn(
                  label: boardState[6],
                  index: 6,
                  onClick: onBoardBtnClick,
                ),
                BoardBtn(
                  label: boardState[7],
                  index: 7,
                  onClick: onBoardBtnClick,
                ),
                BoardBtn(
                  label: boardState[8],
                  index: 8,
                  onClick: onBoardBtnClick,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  resBoard() {
    boardState = [
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
    ];
    counter = 0;
    setState(() {});
  }

  onBoardBtnClick(index) {
    if (boardState[index].isNotEmpty) {
      return;
    }

    if (counter.isOdd) {
      boardState[index] = "X";
      score1 += 2;
      bool win = checkWin("X");
      if (win) {
        score1 += 10;
        reassemble();
      }
    } else {
      boardState[index] = "O";
      score2 += 2;
      bool win = checkWin("O");
      if (win) {
        score2 += 10;
        reassemble();
      }
    }
    counter++;
    setState(() {});
  }

  bool checkWin(String symbol) {
    for (int i = 0; i < 9; i += 3) {
      if (symbol == boardState[0] &&
          symbol == boardState[i + 1] &&
          symbol == boardState[i + 2]) {
        return true;
      }
    }
    for (int i = 0; i < 3; i++) {
      if (symbol == boardState[0] &&
          symbol == boardState[i + 3] &&
          symbol == boardState[i + 6]) {
        return true;
      }
    }
    if (symbol == boardState[0] &&
        symbol == boardState[4] &&
        symbol == boardState[8]) {
      return true;
    }
    if (symbol == boardState[2] &&
        symbol == boardState[4] &&
        symbol == boardState[6]) {
      return true;
    }
    return false;
  }
}
