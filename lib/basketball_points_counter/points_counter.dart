import 'package:flutter/material.dart';

class PointsCounter extends StatefulWidget {
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamAPoints = 0;

  int teamBPoints = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          "Points Counter",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    "Team A",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
                  ),
                  Text(
                    "$teamAPoints",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 150,
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      minimumSize: Size(150, 50),
                    ),
                    onPressed: () {
                      setState(() {
                        teamAPoints++;
                      });
                      print(teamAPoints);
                    },
                    child: Text(
                      "Add 1 Point",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      minimumSize: Size(150, 50),
                    ),
                    onPressed: () {
                      setState(() {
                        teamAPoints = teamAPoints + 2;
                      });
                    },
                    child: Text(
                      "Add 2 Point",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      minimumSize: Size(150, 50),
                    ),
                    onPressed: () {
                      setState(() {
                        teamAPoints = teamAPoints + 3;
                      });
                    },
                    child: Text(
                      "Add 3 Point",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                ],
              ),
              SizedBox(
                height: 450,
                child: VerticalDivider(
                  color: Colors.grey,
                  endIndent: 40,
                  indent: 50,
                  thickness: 2,
                ),
              ),
              Column(
                children: [
                  Text(
                    "Team B",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
                  ),
                  Text(
                    "$teamBPoints",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 150,
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      minimumSize: Size(150, 50),
                    ),
                    onPressed: () {
                      setState(() {
                        teamBPoints++;
                      });
                    },
                    child: Text(
                      "Add 1 Point",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      minimumSize: Size(150, 50),
                    ),
                    onPressed: () {
                      setState(() {
                        teamBPoints += 2;
                      });
                    },
                    child: Text(
                      "Add 2 Point",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      minimumSize: Size(150, 50),
                    ),
                    onPressed: () {
                      setState(() {
                        teamBPoints += 3;
                      });
                    },
                    child: Text(
                      "Add 3 Point",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
              minimumSize: Size(150, 50),
            ),
            onPressed: () {
              setState(() {
                teamAPoints=0;
                teamBPoints=0;
              });
            },
            child: Text(
              "RESET",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
