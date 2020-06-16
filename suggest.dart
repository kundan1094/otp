import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reasonsapp/MerakamCustomWidget.dart';


class MYPersonalDetailsPage2 extends StatefulWidget {
  @override
  _MYPersonalDetailsPage2State createState() => _MYPersonalDetailsPage2State();
}
class _MYPersonalDetailsPage2State extends State<MYPersonalDetailsPage2> {

  bool pressAttention = false;
  bool pressAttention1 = false;
  bool pressAttention2 = false;
  bool pressAttention3 = false;
  bool pressAttention4 = false;
  bool pressAttention5 = false;
  final maxlines=5;
  @override
  Widget build(BuildContext context) {
    return Form(

      child:Scaffold(
        appBar:PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: AppBar(
            backgroundColor: Colors.blue[900],
            leading: IconButton(
              icon: Icon(Icons.arrow_back,size: 25,),
              onPressed: () {
                Navigator.pop(context);},
            ),
            title: Center(
                child:Text("Profile Update  ",
                  style:GoogleFonts.montserrat(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)
            ),
            actions: <Widget>[
              Container(//height: 10,width: 80,
                child: Image.asset('logos/kaam.png'),
                padding: EdgeInsets.fromLTRB(10,7,10,7),
              ),
            ],
          ),
        ),
        body:
        Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                padding: EdgeInsets.only(top:10,left:10,right: 10),
                children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(padding: EdgeInsets.only(top:10,left:10,right: 10),
                          child:
                          Text('SUGGESTION',style: GoogleFonts.montserrat(fontSize: 16,),),
                        ),

                      ],
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(padding: EdgeInsets.only(top:10,left:10,right: 10),
                        child:
                        Text('How Is The Input Interface',style: GoogleFonts.roboto(fontSize: 14,color: Colors.blue[900]),),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(width: 20,),
                      Column(
                        children: <Widget>[

                          RaisedButton(
                            shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0.0),
                              side: BorderSide(color: Colors.blue[900]),

                            ),
                            child:Text('Boring',style: GoogleFonts.roboto(color: Colors.black,),),

                            color: pressAttention ? Colors.blue[900] : Colors.white,
                            onPressed: () {
                              setState(() {
                                pressAttention =! pressAttention;
                              });
                            },
                          ),
                        ],
                      ),
                      SizedBox(width: 10,),
                      Column(
                        children: <Widget>[
                          RaisedButton(
                            shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0.0),
                              side: BorderSide(color: Colors.blue[900]),

                            ),
                            child:Text('Complex',style: GoogleFonts.roboto(color: Colors.black,),),

                            color: pressAttention1 ? Colors.blue[900] : Colors.white,
                            onPressed: () {
                              setState(() {
                                pressAttention1 =! pressAttention1;
                              });
                            },
                          ),

                        ],
                      ),
                      SizedBox(width: 10,),
                      Column(
                        children: <Widget>[
                          RaisedButton(
                            shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0.0),
                              side: BorderSide(color: Colors.blue[900]),

                            ),
                            child:Text('Interesting',style: GoogleFonts.roboto(color: Colors.black,),),

                            color: pressAttention2 ? Colors.blue[900] : Colors.white,
                            onPressed: () {
                              setState(() {
                                pressAttention2 =! pressAttention2;
                              });
                            },
                          ),

                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(width: 20,),
                      Column(
                        children: <Widget>[

                          RaisedButton(
                            shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0.0),
                              side: BorderSide(color: Colors.blue[900]),

                            ),
                            child:Text('Lengthy',style: GoogleFonts.roboto(color: Colors.black,),),

                            color: pressAttention3 ? Colors.blue[900] : Colors.white,
                            onPressed: () {
                              setState(() {
                                pressAttention3 =! pressAttention3;
                              });
                            },
                          ),
                        ],
                      ),
                      SizedBox(width: 10,),
                      Column(
                        children: <Widget>[
                          RaisedButton(
                            shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0.0),
                              side: BorderSide(color: Colors.blue[900]),

                            ),
                            child:Text('Easy',style: GoogleFonts.roboto(color: Colors.black,),),

                            color: pressAttention4 ? Colors.blue[900] : Colors.white,
                            onPressed: () {
                              setState(() {
                                pressAttention4 =! pressAttention4;
                              });
                            },
                          ),

                        ],
                      ),
                      SizedBox(width: 10,),
                      Column(
                        children: <Widget>[
                          RaisedButton(
                            shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0.0),
                              side: BorderSide(color: Colors.blue[900]),

                            ),
                            child:Text('Innovative',style: GoogleFonts.roboto(color: Colors.black,),),

                            color: pressAttention5 ? Colors.blue[900] : Colors.white,
                            onPressed: () {
                              setState(() {
                                pressAttention5 =! pressAttention5;
                              });
                            },
                          ),

                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(padding: EdgeInsets.only(top:20,left:10,right: 10),
                        child:
                        Text('Please Share Your Valuable Suggestion',style: GoogleFonts.roboto(fontSize: 14,color: Colors.blue[900]),),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(padding: EdgeInsets.only(top:10,left:10,right: 10),
                        margin: EdgeInsets.all(10),
                        height: maxlines*24.0,
                        width: 310,
                        child:
                        TextField(
                          maxLines: maxlines,
                          decoration: InputDecoration(
                            hintText: 'Please write something for improving this application as look.input interface etc ',
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(padding: EdgeInsets.only(top:10,left:10,right: 10),
                        child:
                        Text('Please recommend your NEARS & DREAM for this',style: GoogleFonts.roboto(fontSize: 14,color: Colors.blue[900]),),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child:
                        Text('Mobile Application',style: GoogleFonts.roboto(fontSize: 14,color: Colors.blue[900]),),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(height: 60,width: 100,
                        child: Image.asset('logos/kaam.png'),
                        padding: EdgeInsets.fromLTRB(0,7,10,7),
                      ),
                    ],),
                ],
              ),

            ),
          ],
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
      ),
    );
  }
}
