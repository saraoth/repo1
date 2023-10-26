import 'package:flutter/material.dart';
import 'package:islami_app/Hadith/Hadith_Details.dart';


class itemHadithDetails extends StatelessWidget {
  String content  ;
 itemHadithDetails({required this.content });

  @override
  Widget build(BuildContext context) {
    return Text(content ,
      style: Theme.of(context).textTheme.titleSmall,textAlign: TextAlign.center,
    );

  }
}
