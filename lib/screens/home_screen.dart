import 'package:fl_components/router/app_routers.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final options = AppRouters.menuOptions;
    options[4];
    return Scaffold(
      appBar: AppBar(
         title: const Text('Componentes en Flutter'),
      ),
      body: ListView.separated(
         itemBuilder:(context, index) => ListTile(
           leading: Icon(options[index].icon, color: const Color.fromARGB(255, 245, 70, 178)), 
           title: Text(options[index].name),
           onTap: () {

            //final route = MaterialPageRoute
              //builder: (context) =>  const Listview1Screen(),
               //);
              //Navigator.push(context, route);

              Navigator.pushNamed(context, options[index].route);
          },
         ),
         separatorBuilder: (_ , __) => const Divider(), 
         itemCount: options.length
      )
    );
  }
}