import 'package:first_project_in_rootcours/news_veiw/card_model.dart';
import 'package:flutter/material.dart';

class CardItems extends StatelessWidget {
  CardItems({required this.cardModel});

  CardModel cardModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shadowColor: Colors.purpleAccent,
      shape: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.transparent,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Image.asset(cardModel.imagePhat),
            Container(
              color: Colors.purpleAccent,
              child: Text(cardModel.nameCar,style: TextStyle(
                fontSize: 22,
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
