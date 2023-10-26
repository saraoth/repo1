import 'package:flutter/material.dart';
import 'package:islami_app/Hadith/Hadith_Details.dart';
import 'package:islami_app/Home_screen.dart';
import 'package:islami_app/Quran/Sura_Details.dart';
import 'package:islami_app/Theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetails.routeName:(context) => SuraDetails(),
        HadithDetails.routeName:(context) => HadithDetails(),


      },
      theme: MyTheme.LightTheme,
     locale:Locale('ar'),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
