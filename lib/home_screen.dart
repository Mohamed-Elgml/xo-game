import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey,
            title: Text(
              "محمد نيوز",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            centerTitle: true,
          ),
          body: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.purple,
                        child: Text(
                          "الأخبار",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.purple,
                      child: Text(
                        "المجالات",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        color: Colors.red,
                        height: 200,
                        width: 200,
                        child: Text("Mohamed"),
                      ),
                      Container(
                        color: Colors.purple,
                        child: Text(
                          "الأخبار",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        color: Colors.red,
                        height: 200,
                        width: 100
                        ,
                        child: Text("Mohamed"),
                      ),
                      Container(
                        color: Colors.purple,
                        child: Text(
                          "الأخبار",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.purple,
                        child: Text(
                          "الأخبار",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.purple,
                      child: Text(
                        "المجالات",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
