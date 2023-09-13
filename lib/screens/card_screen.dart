import 'package:fl_components/widgets/custom_card_type_1.dart';
import 'package:fl_components/widgets/custom_card_type_2.dart';
import 'package:flutter/material.dart';



class CardScreen extends StatelessWidget {

  const CardScreen ({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('The Magic of Friendship'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        children: const [ 

          CustomCardType1(),
          SizedBox(height: 20),
          CustomCardType2(imageUrl: 'https://i.pinimg.com/originals/ea/de/78/eade78c866e122139b61976ffb357d01.png', 
          name: 'Hallo Kitty and My Melody',),
          SizedBox(height: 20),
          CustomCardType2(imageUrl: 'https://i.seadn.io/gae/a0jxFHLMR-U_iW3GgahBomAXXjo--YSObAe30Ig3qSufb9qm69n-diOLpIbAA4a0Cz4uKQd_aEDZ1-YAEaD6BdIFJQT3gzgfMn5U94o?auto=format&dpr=1&w=1000', 
          name: 'Kuromy',),
          SizedBox(height: 20),
          CustomCardType2(imageUrl: 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/cc5359a0-6adc-4dab-86fc-8a0147e4c6f3/df0he8q-8abe70b9-03a7-4700-abf8-b253150dd923.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2NjNTM1OWEwLTZhZGMtNGRhYi04NmZjLThhMDE0N2U0YzZmM1wvZGYwaGU4cS04YWJlNzBiOS0wM2E3LTQ3MDAtYWJmOC1iMjUzMTUwZGQ5MjMucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.rkLc2VUcR0Ru9X7qNjTfluUOFA0LAJjr-ConoHbLN8c', 
          name: 'Best Friends',),
          SizedBox(height: 100),
        ],
      )
    );
  }
}

