import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen ({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Kawaii'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: const  CircleAvatar(
              backgroundColor: Color.fromARGB(255, 236, 116, 204),
              child: Text('KW'),
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius:110,
          backgroundImage: NetworkImage('https://img.freepik.com/vector-premium/lindo-personaje-dibujos-animados-linda-chica-pelirroja-gafas-estilo-dibujado-mano-aislado-caracter-plano_543094-119.jpg'),
          //child: Image.network('https://img.freepik.com/vector-premium/lindo-personaje-dibujos-animados-linda-chica-pelirroja-gafas-estilo-dibujado-mano-aislado-caracter-plano_543094-119.jpg'),
        )
      ),
    );
  }
}