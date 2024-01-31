import 'package:flutter/material.dart';

class BoardBtn extends StatelessWidget {
  BoardBtn({required this.label,required this.onClick,required this.index});

  String label;
  Function onClick;
  int index;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
        onPressed: () {
          onClick(index);
        },
        child: Text(
          "$label",
          style: TextStyle(
              fontSize: 50, fontWeight: FontWeight.w500, color: Colors.black),
        ),
      ),
    );
  }
}
