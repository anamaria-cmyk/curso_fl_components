

import 'package:flutter/material.dart';

class AppTheme {

  static const Color primary = Color.fromARGB(255,245, 70, 178);

  static final ThemeData lightTheme = ThemeData.light().copyWith(
     //color primario
        primaryColor: const Color.fromARGB(255, 245, 70, 178),

        //AppBar Theme
        appBarTheme: const AppBarTheme(
          color: primary,
          elevation: 2,
        ),

        //TextBotton Theme 
       textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom( primary: primary)
       ),

       //FloatingActionBottons
       floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primary,
        elevation: 0,
       ),

       //ElevationBottons
       elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary:const Color.fromARGB(255, 245, 70, 178),
          shape: const StadiumBorder(),
          elevation: 0,
        ),
       ),

       inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle( color: primary),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide( color: primary),
          borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide( color: primary),
          borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),
        ),
       )

  );

}