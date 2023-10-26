import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/Theme.dart';




class SuraDetails extends StatefulWidget {
  static const String routeName ='sura_details';

  @override
  State<SuraDetails> createState() => SuraDetailsState();
}

class SuraDetailsState extends State<SuraDetails> {
  List<String> verses =[];

  @override
  Widget build(BuildContext context) {
     var args=ModalRoute.of(context)?.settings.arguments as SuradetailsArg;


    if(verses.isEmpty){
      loadFile(args.index);
    }

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
    title: Text('${args.name}',style: Theme.of(context).textTheme.titleLarge,),
    ),
      body:
      Center(
        child: verses.length==0?
            CircularProgressIndicator(
              color: Theme.of(context).primaryColor,
            ):

        Container(
          margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width*0.05,vertical: MediaQuery.of(context).size.height*0.06,
          ),
          decoration:BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: MyTheme.whitecolor,
          ),
    child: ListView.separated(
    separatorBuilder:((context,index){
    return  Divider(
    color: Theme.of(context).primaryColor,
    thickness: 3,);
    }),
            itemCount:verses.length, itemBuilder: (BuildContext context, int index) {  } ,
    ),
        ),
      ),
    ),

],

    );
  }

void loadFile (int index) async //to read text file in flutter rootbundle.Routestring
{

 String content= await rootBundle.loadString('assets/files/${index+1}.txt');
content.split('\n');
List<String> lines=content.split('\n');
verses=lines;
setState(() {

});
}
}

 //data class
 class SuradetailsArg {
  String name;
  int index ;
  SuradetailsArg({required this.name, required this.index});
  }
