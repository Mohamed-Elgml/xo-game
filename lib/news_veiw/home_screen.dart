import 'package:first_project_in_rootcours/news_veiw/card_items.dart';
import 'package:first_project_in_rootcours/news_veiw/card_model.dart';
import 'package:flutter/material.dart';

class HomeScreenNews extends StatelessWidget {
  List<CardModel> cards = [];

  addDummyData() {
    for (int i = 0; i < 20; i++) {
      cards.add(CardModel("HI $i", "assets/images/hbd.png"));
    }
  }

  HomeScreenNews() {
    addDummyData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Route"),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return CardItems(cardModel: cards[index]);
      },itemCount: cards.length,),
    );
  }

// Widget convertToCard(cardModel) {
//   return CardItems(cardModel: cardModel);
// }
}
