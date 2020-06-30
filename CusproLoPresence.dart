import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:identityapp/MeraKamCustomWidget.dart';
//List<int> _selected=[];


class CusProLoPresence extends StatefulWidget {
  @override
  _BusinessListingState createState() => _BusinessListingState();
}
class _BusinessListingState extends State<CusProLoPresence> {
  final maxlines=5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBarMeraKam( Heading: "Profile Update"),
      ),
      body:Container(
          margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child:Column(
            children: <Widget>[
              //Heading of page
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Text('Location Of Your Presence',
                  style:GoogleFonts.montserrat(
                    textStyle:TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue[900]
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                height: 30,
                child: TextField(
                  expands: true,
                  maxLines: null,
                  minLines: null,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                    hintText: 'Google Search & Select',
                    hintStyle: TextStyle(fontSize: 14,),
                    enabledBorder:  UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(
                        color: Colors.blue[900],
                        width: 2.0,
                      ),
                    ),
                    focusedBorder:  UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 2.0,
                      ),
                    ),
                    suffixIcon: Icon(Icons.keyboard_voice,size: 25,color:Colors.blue[900]),
                    prefixIcon: Icon(Icons.search,size: 25,color: Colors.blue[900]),
                  ),

                ),
              ),
              Row(
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.fromLTRB(10, 20, 10, 5),
                    child: Text('Describe in Detail About The Assignment',
                      style:GoogleFonts.roboto(
                        textStyle:TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,color: Colors.blue[900],
                        ),
                      ),
                    ),
                  ),
                ],

              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(padding: EdgeInsets.only(top:0,left:5,right: 10),
                    margin: EdgeInsets.all(5),
                    height: maxlines*20.0,
                    width: 330,
                    child:
                    TextField(
                      maxLines: maxlines,
                      decoration: InputDecoration(
                        hintText: 'Eg. Number Of Days .detail Of The Work, Your Term If Any. ',
                        hintStyle:  GoogleFonts.roboto(fontSize: 14,color: Colors.grey[300]),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(color: Colors.blue[900]),
                        ),
                        fillColor: Colors.white,
                        filled: true,

                      ),

                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),


              Row(

                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),

                  Expanded(
                    child: MyTextFormFields(

                      LText: "Mark GPS Location",

                    ),
                  ),
                  SizedBox(width: 10,),
                  IconButton(
                    icon: Icon(Icons.location_on,color: Colors.red,size: 25,),
                  )
                ],),



            ],
          )
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue[900],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_forward,color: Colors.white,size: 25,),

            ),
            IconButton(
              icon: Icon(Icons.live_help,color: Colors.white,size: 25,),
            )
          ],
        ),
      ),
      //bottomNavigationBar: BottamAppBarMeraKam(link:'/businessListing',),
    );
  }
}