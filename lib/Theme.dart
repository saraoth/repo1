import 'package:flutter/material.dart';

class MyTheme {

  static Color primaryLight=Color(0xffB7935F);

  static Color Blackcolor =Color(0xff1E1E1E);

  static Color whitecolor =Color(0xffF2F2F2);

  //colors, light mode ,dark mode
  static ThemeData LightTheme = ThemeData(
   primaryColor: primaryLight,
    canvasColor: primaryLight,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,centerTitle: true,
      iconTheme: IconThemeData(
        color: Blackcolor,
      )
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize:30,
        fontWeight: FontWeight.bold,
        color: Blackcolor,
      ),

      titleMedium: TextStyle(
        fontSize:25,
        fontWeight: FontWeight.w500,
        color: Blackcolor,
      ),
      titleSmall: TextStyle(
        fontSize:25,
        fontWeight: FontWeight.w500,
        color: Blackcolor,
      ),

    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Blackcolor,
      unselectedItemColor: whitecolor,
      showUnselectedLabels: true,
    )
  );
}