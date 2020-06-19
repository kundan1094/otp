import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:identityapp/MeraKamCustomWidget.dart';


class IdentityDetails1 extends StatefulWidget {
  @override
  _IdentityDetailsState createState() => _IdentityDetailsState();
}
class _IdentityDetailsState extends State<IdentityDetails1> {
  final _formKey = GlobalKey<FormState>();
  var txt = TextEditingController();
  bool pressAttention = false;
  bool pressAttention1 = false;
  bool pressAttention2 = false;
  bool pressAttention3 = false;
  bool pressAttention4 = false;
  bool pressAttention5 = false;
  bool pressAttention6 = false;
  final maxlines=5;

  String _currentSelectedDistrict="Patna";
  var District=['Patna','Nasik','Pune','New Delhi','Ludhiyana'];
  void _handleChangedDistrict(String value) {
    setState(() {
      _currentSelectedDistrict=value;
    });

  }


  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child:Scaffold(
        appBar: PreferredSize(
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
                //padding: EdgeInsets.only(top:20,left:10,right: 10),
                children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text('Working Days',style: GoogleFonts.roboto(
                          textStyle:TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,color: Colors.blue[900],
                          ),
                        ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[

                            Column(
                              children: <Widget>[
                                  Container(height: 35,width: 75,

                                child:

                                RaisedButton(
                                  shape:RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                    side: BorderSide(color: Colors.blue[900]),
                                  ),
                                  child:Text('Mon',style: GoogleFonts.roboto(color: Colors.black,),),

                                  color: pressAttention ? Colors.blue[900] : Colors.white,
                                  onPressed: () {
                                    setState(() {
                                      pressAttention =! pressAttention;
                                    });
                                  },
                                ),
                                ),
                              ],
                            ),
                            SizedBox(width: 10,),
                            Column(
                              children: <Widget>[
                               Container(height: 35,width: 75,

                                     child:
                                RaisedButton(
                                  shape:RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                    side: BorderSide(color: Colors.blue[900]),

                                  ),
                                  child:Text('Tue',style: GoogleFonts.roboto(color: Colors.black,),),

                                  color: pressAttention1 ? Colors.blue[900] : Colors.white,
                                  onPressed: () {
                                    setState(() {
                                      pressAttention1 =! pressAttention1;
                                    });
                                  },
                                ),
                               ),

                              ],
                            ),
                            SizedBox(width: 10,),
                            Column(
                              children: <Widget>[
                            Container(height: 35,width: 75,

                                 child:
                                RaisedButton(
                                  shape:RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                    side: BorderSide(color: Colors.blue[900]),

                                  ),
                                  child:Text('Wed',style: GoogleFonts.roboto(color: Colors.black,),),

                                  color: pressAttention2 ? Colors.blue[900] : Colors.white,
                                  onPressed: () {
                                    setState(() {
                                      pressAttention2 =! pressAttention2;
                                    });
                                  },
                                ),
                            ),

                              ],
                            ),
                            SizedBox(width: 10,),
                            Column(
                              children: <Widget>[
                             Container(height: 35,width: 75,

                                   child:
                                RaisedButton(
                                  shape:RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                    side: BorderSide(color: Colors.blue[900]),

                                  ),
                                  child:Text('Thru',style: GoogleFonts.roboto(color: Colors.black,),),

                                  color: pressAttention2 ? Colors.blue[900] : Colors.white,
                                  onPressed: () {
                                    setState(() {
                                      pressAttention6 =! pressAttention6;
                                    });
                                  },
                                ),
                             ),

                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[

                            SizedBox(width: 35,),
                            Column(
                              children: <Widget>[
                          Container(height: 35,width: 75,

                           child:

                                RaisedButton(
                                  shape:RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                    side: BorderSide(color: Colors.blue[900]),

                                  ),
                                  child:Text('Fri',style: GoogleFonts.roboto(color: Colors.black,),),

                                  color: pressAttention3 ? Colors.blue[900] : Colors.white,
                                  onPressed: () {
                                    setState(() {
                                      pressAttention3 =! pressAttention3;
                                    });
                                  },
                                ),
                          ),
                              ],
                            ),
                            SizedBox(width: 10,),
                            Column(
                              children: <Widget>[
                           Container(height: 35,width: 75,

                                child:
                                RaisedButton(
                                  shape:RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                    side: BorderSide(color: Colors.blue[900]),

                                  ),
                                  child:Text('Sat',style: GoogleFonts.roboto(color: Colors.black,),),

                                  color: pressAttention4 ? Colors.blue[900] : Colors.white,
                                  onPressed: () {
                                    setState(() {
                                      pressAttention4 =! pressAttention4;
                                    });
                                  },
                                ),
                           ),

                              ],
                            ),
                            SizedBox(width: 10,),
                            Column(
                              children: <Widget>[
                           Container(height: 35,width: 75,

                              child:
                                RaisedButton(
                                  shape:RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                    side: BorderSide(color: Colors.blue[900]),

                                  ),
                                  child:Text('Sun',style: GoogleFonts.roboto(color: Colors.black,),),

                                  color: pressAttention5 ? Colors.blue[900] : Colors.white,
                                  onPressed: () {
                                    setState(() {
                                      pressAttention5 =! pressAttention5;
                                    });
                                  },
                                ),
                           ),

                              ],
                            ),
                          ],
                        ),
                  SizedBox(height: 10,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text('Working hours',style: GoogleFonts.roboto(
                        textStyle:TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,color: Colors.blue[900],
                        ),
                      ),
                      ),
                    ],
                  ),

                  MyTextFormFields(LText: 'Company Name',),



                  Row(
                    children: <Widget>[
                      Expanded(
                        child:MyDropDownList(
                          LText: "From",
                          currentSelectdValue: _currentSelectedDistrict,
                          onChanged: _handleChangedDistrict,
                          list: District,
                        ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(child:
                      MyDropDownList(
                        LText: "To",
                        currentSelectdValue: _currentSelectedDistrict,
                        onChanged: _handleChangedDistrict,
                        list: District,
                      ),
                      ),
                    ],),
                  Row(
                    children: <Widget>[
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
                  Text('Describe Your Business Services',style: GoogleFonts.roboto(
                    textStyle:TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,color: Colors.blue[900],
                    ),
                  ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(padding: EdgeInsets.only(top:10,left:0,right: 0),

                        height: maxlines*16.0,
                        width: 340,
                        child:
                        TextField(
                          maxLines: maxlines,
                          decoration: InputDecoration(
                            hintText: 'Authorizations, Certification, Reward, Appreciation, Project Completions, Facilities to Customer',
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
                  SizedBox(height: 10,),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child:
                      Container(
                        child: Divider(
                          color: Colors.green,
                          height: 36,
                        ),
                      ),
                        ),
                       Text('Contact Details',style: GoogleFonts.roboto(
                    textStyle:TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,color: Colors.green,
                    ),
                  ),
                  ),
                   Expanded(
                       child:
                        Container(
                          child: Divider(
                            color: Colors.green,
                            height: 36,
                          ),
                        ),
                      ),
                      ],
                  ),



                  MyTextFormFields(LText: 'Office Assistant Person',),
                  MyTextFormFields(LText: 'Assistant Mobile Number',),


                ],
              ),
            ),
          ],
        ),

      ),
    );
  }
}