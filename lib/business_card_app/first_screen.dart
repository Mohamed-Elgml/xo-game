import 'package:flutter/material.dart';

class BusinessCardApp extends StatelessWidget {
  const BusinessCardApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(
        0xff2B475E,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 112,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 110,
              backgroundColor: Color(
                0xff2B475E,
              ),
              backgroundImage: NetworkImage(
                "https://web-strapi.mrmilu.com/uploads/flutter_logo_470e9f7491.png",
              ),
            ),
          ),
          Text(
            "Mohmed Samir",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
              fontFamily: "Pacifico",
            ),
          ),
          Text(
            "FLUTTER DEVELOPER",
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Divider(
            color: Colors.grey,
            thickness: 2,
            indent: 30,
            endIndent: 30,
            height: 50,
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            margin: EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 16,
            ),
            child: ListTile(
              leading: Icon(
                Icons.image,
                size: 32,
              ),
              title: Text(
                "HI World",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              height: 65,
              child: Row(
                children: [
                  Spacer(
                    flex: 1,
                  ),
                  Icon(
                    Icons.phone,
                    size: 32,
                    color: Color(
                      0xff2B475E,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text(
                      "(+20) 1069427661",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ),
                  Spacer(
                    flex: 3,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              height: 65,
              child: Row(
                children: [
                  Spacer(
                    flex: 1,
                  ),
                  Icon(
                    Icons.mail,
                    size: 32,
                    color: Color(
                      0xff2B475E,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text(
                      "mooohsamer@gmail.com",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
