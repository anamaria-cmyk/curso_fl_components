import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {

  final options = const['Mega Man', 'Metal Gear', 'Suoer Smach', 'Fnal Fantasy'];

  const Listview1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(   
        title: const Text('Listview Tipo 1'),
        ),
      
      body: ListView(
        children:  [

          ...options.map(
            (game) => ListTile( title: Text( game ),
            trailing: const Icon(Icons.arrow_forward_ios, color: Color.fromARGB(255, 233, 30, 179)),
            )
            ).toList(),


        ],
      )
    );
  }
}