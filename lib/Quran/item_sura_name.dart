import 'package:flutter/material.dart';
import 'package:islami_app/Quran/Sura_Details.dart';



class itemSurah extends StatelessWidget {
int index;
  String name ;
 itemSurah({required this.name,required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
     Navigator.of(context).pushNamed(SuraDetails.routeName, arguments :SuradetailsArg);
      },
      child: Text('$name{${index+1}}' , style: Theme.of(context).textTheme.titleSmall,textAlign: TextAlign.center,
      ),
    );

  }
}
