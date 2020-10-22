import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:identityapp/second.dart';
class forth extends StatefulWidget {
  @override
  _forthState createState() => _forthState();
}

class _forthState extends State<forth> {
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
                    leading:Text("page4",style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.bold),),
                    

                  ),




                ],

              ),
            ),
          ),


        ],

      );
  }
}
