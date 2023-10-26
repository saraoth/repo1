import 'package:flutter/material.dart';
import 'package:islami_app/Hadith/Hadith_Details.dart';


class itemSurahDetails extends StatelessWidget {
int index;
  String content  ;
 itemSurahDetails({required this.content ,required this.index});

  @override
  Widget build(BuildContext context) {
    return Text('$content{${index+1}}' , style: Theme.of(context).textTheme.titleSmall,textAlign: TextAlign.center,
    );

  }
}
