import 'package:flutter/material.dart';
import 'package:islami_app/Hadith/hadith.dart';
import 'package:islami_app/Quran/quran.dart';
import 'package:islami_app/Radio/radio.dart';
import 'package:islami_app/Sebha/sebha.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/settings/Settings_tap.dart';


class HomeScreen extends StatefulWidget {
  static const String routeName = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedindex =0;

  @override
  Widget build(BuildContext context) {
    return Stack(
    children: [
     Image.asset('assets/images/bg3_main.png',
       width :double.infinity,
       height:double.infinity,
       fit: BoxFit.fill,),
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,centerTitle: true,
          title: Text(AppLocalizations.of(context)!.app_title,style: Theme.of(context).textTheme.titleLarge,),
        ),

        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Theme.of(context).primaryColor
          ),
          child: BottomNavigationBar(
            currentIndex:selectedindex,
            onTap: (index){
              selectedindex = index;
              setState(() {

              });
            },
            items: [
              BottomNavigationBarItem(icon:ImageIcon(AssetImage('assets/images/icon_quran.png')),
                  label:AppLocalizations.of(context)!.quran,
              ),

              BottomNavigationBarItem(icon:ImageIcon(AssetImage('assets/images/quran2.png')),
                label: AppLocalizations.of(context)!.hadith,
              ),

              BottomNavigationBarItem(icon:ImageIcon(AssetImage('assets/images/radio.png')),
                label: AppLocalizations.of(context)!.radio,
              ),

              BottomNavigationBarItem(icon:ImageIcon(AssetImage('assets/images/sebha.png')),
                label: AppLocalizations.of(context)!.sebha,
              ),

              BottomNavigationBarItem(icon:Icon(Icons.settings),
                label: AppLocalizations.of(context)!.settings_tap,
              ),
            ],
    ),
        ),

        body: tabs[selectedindex],


      )

    ],
    );
  }
  List<Widget> tabs=[
    quranTap() , hadithTap() , sebhaTap() , radioTap(),Settings_tap()
  ];
}
