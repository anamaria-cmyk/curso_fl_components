import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/cupertino.dart';


class AlertScreen extends StatelessWidget {

  const AlertScreen ({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context){

    showCupertinoDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context) {
        return CupertinoAlertDialog(
          title: const Text('Titulo'),
          content: const Column(
           mainAxisSize: MainAxisSize.min,
             children: [
              Text('Este es el contenido de alerta'),
              SizedBox( height: 10 ),
              FlutterLogo( size: 50 )
            ],
          ),
           actions: [

            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancelar', style: TextStyle( color: Color.fromARGB(255, 238, 4, 156))),
            ),
            TextButton(
             onPressed: () => Navigator.pop(context),
             child: const Text('OK') 
            ),
          ],
        );
      }
    );

  }

  void displayDialogAndroid(BuildContext context) {

    showDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context) {

       return  AlertDialog(
        elevation:5,
        title: const Text('Titulo'),
        shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10)),
        content: const Column(
          mainAxisSize: MainAxisSize.min,
          children:  [
            Text('Este es el contenido de alerta'),
            SizedBox( height: 10 ),
            FlutterLogo( size: 50)
            ],
          ),
          actions: [
           TextButton(
             onPressed: () => Navigator.pop(context),
             child: const Text('Cancelar') 
            ),
          TextButton(
             onPressed: () => Navigator.pop(context),
             child: const Text('ok') 
            ) 
          ],
        );
      }
    );
  }
  
  @override
  Widget build(BuildContext context) {
     return  Scaffold(
        body: Center(
           child: ElevatedButton(
               // style: ElevatedButton.styleFrom(
              // primary:const Color.fromARGB(255, 245, 70, 178),
              // shape: const StadiumBorder(),
              // elevation: 0,
              // ),
      
            child: const Padding(
            padding: EdgeInsets.symmetric( horizontal: 20, vertical: 15),
            child: Text('Mostrar alerta', style: TextStyle(fontSize: 16)),
            ),
              //onPressed: () => displayDialogAndroid( context )
            onPressed: () => Platform.isAndroid 
            ? displayDialogAndroid( context )
            : displayDialogIOS( context )
          ) 
        ),
           floatingActionButton: FloatingActionButton(
             backgroundColor: const Color.fromARGB(255, 245, 70, 178),
             child: const Icon( Icons.close ),
             onPressed: () => Navigator.pop(context)
          ),
      );
    }
}
