import 'package:flutter/material.dart';

class WhatsAppScreen extends StatelessWidget {
  const WhatsAppScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: FloatingActionButton(
          backgroundColor: Colors.green.shade900,
          onPressed: () {},
          child: Icon(
            Icons.mic_outlined,
            size: 30,
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color(
          0xff202C33,
        ),
        leading: Icon(
          Icons.arrow_back,
          size: 30,
        ),
        title: Row(
          children: [
            CircleAvatar(
              radius: 22,
              backgroundColor: Color(
                0xff1F2C33,
              ),
              child: CircleAvatar(
                radius: 21,
                backgroundColor: Color(
                  0xff1F2C33,
                ),
                backgroundImage: AssetImage(
                  "assets/images/1.jpg",
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "BABA",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
        actions: [
          Icon(
            Icons.videocam_rounded,
            size: 30,
          ),
          SizedBox(
            width: 12,
          ),
          Icon(
            Icons.phone,
            size: 30,
          ),
          SizedBox(
            width: 12,
          ),
          Icon(
            Icons.more_vert,
            size: 30,
          ),
        ],
      ),
      body: Stack(
        children: [
          Image.asset(
            "assets/images/background.png",
            fit: BoxFit.cover,
            width: 1000,
          ),
          Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 22,
                    backgroundColor: Color(
                      0xff1F2C33,
                    ),
                    child: CircleAvatar(
                      radius: 21,
                      backgroundColor: Color(
                        0xff1F2C33,
                      ),
                      backgroundImage: AssetImage(
                        "assets/images/2.jpg",
                      ),
                    ),
                  ),
                  Container(
                    height: 72,
                    child: Text(
                      "Where are you My Son?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    width: 300,
                    margin: const EdgeInsets.only(left: 10.0, right: 0.0),
                    padding: EdgeInsets.all(28.0),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0),
                        bottomLeft: Radius.circular(40.0),
                        bottomRight: Radius.circular(40.0),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Container(
                      child: Text(
                        "I'm on my way home, don't worry, Dad",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      width: 300,
                      margin: const EdgeInsets.only(left: 10.0, right: 0.0),
                      padding: EdgeInsets.all(28.0),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40.0),
                          topRight: Radius.circular(40.0),
                          bottomLeft: Radius.circular(40.0),
                          bottomRight: Radius.circular(40.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  CircleAvatar(
                    radius: 22,
                    backgroundColor: Color(
                      0xff1F2C33,
                    ),
                    child: CircleAvatar(
                      radius: 21,
                      backgroundColor: Color(
                        0xff1F2C33,
                      ),
                      backgroundImage: AssetImage(
                        "assets/images/3.jpg",
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 385,
              ),
              Row(
                children: [
                  Container(
                    height: 75,
                    child: Row(
                      children: [
                        Icon(
                          Icons.tag_faces,
                          size: 26,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Type your Message",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Icon(
                          Icons.attach_file,
                          color: Colors.white,
                          size: 25,
                        ),
                      ],
                    ),
                    width: 300,
                    margin: const EdgeInsets.only(left: 10.0, right: 0.0),
                    padding: EdgeInsets.all(28.0),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0),
                        bottomLeft: Radius.circular(40.0),
                        bottomRight: Radius.circular(40.0),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
