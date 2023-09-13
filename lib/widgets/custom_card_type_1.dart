import 'package:flutter/material.dart';
import 'package:fl_components/themes/app_theme.dart';


class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
   Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [

          const ListTile(
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary),
            title:Text('Soy un Titulo'),
            subtitle: Text('Ad officia officia do dolor non enim proident non est deserunt ea dolore ex.'),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancel'),
                  ),
                 TextButton(
                  onPressed: () {},
                  child: const Text('OK'),
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}