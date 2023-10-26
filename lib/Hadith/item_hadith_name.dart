import 'package:flutter/material.dart';
import 'package:islami_app/Hadith/Hadith_Details.dart';
import 'package:islami_app/Hadith/hadith.dart';


class itemHadithname extends StatelessWidget {
      Hadith  hadeth ;
  itemHadithname({required this.hadeth});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
         //navigator
        Navigator.of(context).pushNamed(HadithDetails.routeName,
        arguments:hadeth);

      },
      child: Text(hadeth.title , style: Theme.of(context).textTheme.titleSmall,textAlign: TextAlign.center,
      ),
    );

  }
}
