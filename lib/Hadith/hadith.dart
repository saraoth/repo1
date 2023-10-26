import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/Hadith/item_hadith_name.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class hadithTap extends StatefulWidget{
  @override
  State<hadithTap> createState() => _hadithTapState();
}

class _hadithTapState extends State<hadithTap> {
  List<Hadith> ahaadithlist =[];

  @override
  Widget build(BuildContext context) {

    if (ahaadithlist.isEmpty){
      loadhadithfile();
    }
    return Column(
      children: [
        Center(child: Image.asset('assets/images/bismillah_logo.png')),
        Divider(
          color: Theme.of(context).primaryColor,
          thickness: 3,
        ),
        Text(
          AppLocalizations.of(context)!.hadith_name,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Divider(
          color: Theme.of(context).primaryColor,
          thickness: 3,
        ),

        ahaadithlist.isEmpty?
            Center(child: CircularProgressIndicator(
              color: Theme.of(context).primaryColor,
            ))
            :
        Expanded(
          child: ListView.separated(
            itemBuilder: ((context, index) {
               return  itemHadithname(hadeth: ahaadithlist[index]);
               //  Divider(
             //  color: Theme.of(context).primaryColor,
             //    thickness: 3,
              // );
            }),
            separatorBuilder: (context, index) {
              return Divider(
                color: Theme.of(context).primaryColor,
                thickness: 3,
              );
            },
            itemCount:ahaadithlist.length,
          ),
        ),
      ],
    );
  }

  //to read file of hadith with future of string
  void loadhadithfile()async{
     String contentofhadith = await  rootBundle.loadString('assets/files/hadith.txt');
     //to split ahadith each one alone
   List<String> hadithlist =  contentofhadith.split('#\r\n');
   for(int i =0 ; i<hadithlist.length;i++){
  List<String> hadithlines = hadithlist[i].split('\n');
  String title =hadithlines[0];
  hadithlines.removeAt(0);
  Hadith hadith= Hadith(title: title, content: hadithlines);
  ahaadithlist.add(hadith);
  setState(() {

  });

   }
  }
}
//Data class
class Hadith{
  String title ;
  List <String > content;
Hadith({required this.title , required this.content});
}