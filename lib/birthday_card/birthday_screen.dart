import 'package:flutter/material.dart';

class BirthdayCard extends StatelessWidget {
  const BirthdayCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(
        0xffD2BCD5,
      ),
      body: Center(
        child: Image(
          image: AssetImage(
            'images/hbd.png',
          ),
        ),
      ),
    );
  }
}
