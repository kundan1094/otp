import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:identityapp/first.dart';

class second extends StatefulWidget {
  @override
  _secondState createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return
      ListView(
        children: <Widget>[

          Card(
            color: Colors.white,
            child:Padding(

              padding:EdgeInsets.fromLTRB(15, 0, 5, 5) ,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  ListTile(
                    leading:Text("page2",style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.bold),),



                  ),




                ],

              ),
            ),
          ),


        ],

      );
  }
}
