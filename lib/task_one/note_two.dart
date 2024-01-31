import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class XOGame extends StatelessWidget {
  XOGame({required this.x,required this.o,required this.tile,Key? key}) : super(key: key);
  String x="X";
  String o="O";
  String tile="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "XO-GAME",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "PLayer 1",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
              Text(
                "PLayer 2",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "0",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
              Text(
                "0",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
            ],
          ),
          Divider(
            indent: 10,
            endIndent: 10,
            thickness: 2,
            color: Colors.black,
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      if(tile==x){
                        return;
                      }else if(tile==''){
                        return ;
                      }
                    },
                    child: Container(
                      child: Text(tile),
                      height: 70,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Container(
                      child: Text(tile),
                      height: 70,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Container(
                      child: Text(""),
                      height: 70,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Container(
                      child: Text(""),
                      height: 70,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Container(
                      child: Text(""),
                      height: 70,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Container(
                      child: Text(""),
                      height: 70,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Container(
                      child: Text(""),
                      height: 70,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Container(
                      child: Text(""),
                      height: 70,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Container(
                      child: Text(""),
                      height: 70,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
