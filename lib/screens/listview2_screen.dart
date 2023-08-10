import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {

  final options = const['Mega Man', 'Metal Gear', 'Super Smach', 'Final Fantasy'];

  const Listview2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(   
        title: const Text('Listview Tipo 2'), 
        backgroundColor: const Color.fromARGB(255, 245, 70, 178)
        ),
      
      body: ListView.separated(
         itemCount: options.length,        
         itemBuilder: (context, index) => ListTile(
           title: Text( options[index] ),
           trailing: const Icon( Icons.favorite_border, color: Color.fromARGB(255, 233, 30, 179)),
           onTap: () {
             final game = options[index];
             print( game );
           },
        ),
          separatorBuilder: ( _ , __ ) => const Divider(),
      )
    );
  }
}