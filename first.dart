import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:identityapp/second.dart';
class first extends StatefulWidget {
  @override
  _firstState createState() => _firstState();
}

class _firstState extends State<first> {
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
               Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: <Widget>[
                   Column(
                     children: <Widget>[
                       Container(
                         child: Icon(Icons.check_circle_outline,color: Colors.blue,),
                       ),
                     ],
                   ),
                   SizedBox(width:8),
                   Container(
                  child: Text("Diwakar sharma",style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.bold),),
                   ),
                 SizedBox(width:20),
                 Column(
                   children: <Widget>[
                     Container(
                       child:Text('Reporter',style: GoogleFonts.roboto(color: Colors.blue,),),


                     ),

                   ],
                 ),
                   SizedBox(width:7),
                   Column(
                     children: <Widget>[
                       Container(
                         child: Icon(Icons.person_add,),
                       ),
                     ],
                   ),

                   SizedBox(width:48),
                  Column(
                 children: <Widget>[
                   Container(
                    child: Icon(Icons.more_horiz,

                     ),
                   ),
                  ],
                    ),


                 ],
               ),

               Divider(),
               Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: <Widget>[
                     Row(
                       children: <Widget>[
                         Container(height: 100,width: 200,
                       child:  Text("To pursue a career in a growth oriented firm and become a key player in meeting the goals of the organization ....  Read More",style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.normal),),
                         ),
                           ],
                     ),
                     SizedBox(width: 12,),
                     Row(
                       children: <Widget>[
                         Container(height: 92,width:120,

                           child: Image.asset('logos/one.jpg'),
                           padding: EdgeInsets.fromLTRB(1,0,1,0),
                           decoration:  BoxDecoration(
                             border: Border.all(width: 0, color: Colors.black38),
                             borderRadius:  BorderRadius.circular(2),

                           ),

                         ),

                       ],
                     ),

                   ],
                 ),
               SizedBox(height: 2,),

               Container(
                 width: MediaQuery.of(context).size.width,
                 child: Text("10 Oct 2020, 07:10 AM",style: GoogleFonts.montserrat(fontSize: 12,fontWeight: FontWeight.normal),),
               ),
               SizedBox(height: 5,),
               Row(
                 children: <Widget>[
                   Container(
                     child: Icon(Icons.visibility,

                     ),
                   ),
                   SizedBox(width: 5.0,),

                   Column(
                     children: <Widget>[
                       Container(
                         child: Text("5 Views",style: GoogleFonts.montserrat(fontSize: 12,fontWeight: FontWeight.normal,color: Colors.blue,),),
                       ),
                     ],
                   ),
                   SizedBox(width: 40.0,),
                   Column(
                     children: <Widget>[
                       Container(
                         child: Icon(Icons.favorite,color: Colors.red,
                         ),
                       ),
                     ],
                   ),
                   SizedBox(width: 10.0,),
                   Column(
                     children: <Widget>[
                       Container(
                         child: Text("5 Follow",style: GoogleFonts.montserrat(fontSize: 12,fontWeight: FontWeight.normal,color: Colors.blue,),),
                       ),
                     ],
                   ),
                 ],
               ),



               SizedBox(height: 5.0,),
               Container(

                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: <Widget>[
                     Text("10 Likes",style: GoogleFonts.montserrat(fontSize: 12,fontWeight: FontWeight.normal),),
                     Row(
                       children: <Widget>[
                       Text("5 Comments",style: GoogleFonts.montserrat(fontSize: 12,fontWeight: FontWeight.normal),),
                         SizedBox(width:85.0 ,),
                         Text("7 Shared",style: GoogleFonts.montserrat(fontSize: 12,fontWeight: FontWeight.normal),),
                       ],
                     ),
                   ],
                 ),


    ),
               Divider(),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: <Widget>[
                   Row(
                     children: <Widget>[
                       Icon(Icons.thumb_up,
                         size:18.0,
                       ),
                       SizedBox(width: 5.0,),
                       Text("Like",style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.normal),)
                     ],
                   ),


                   Row(
                     children: <Widget>[
                       Icon(Icons.mode_comment,
                         size:18.0,
                       ),
                       SizedBox(width: 5.0,),
                       Text("Comment",style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.normal),)
                     ],
                   ),
                   Row(
                     children: <Widget>[
                       Icon(Icons.share,
                         size:18.0,
                       ),
                       SizedBox(width: 5.0,),
                       Text("Share",style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.normal),)
                     ],
                   ),
                 ],
               ),


             ],

            ),
            ),
          ),
          Divider(color: Colors.white38,),

          Card(
            color: Colors.white,
            child:Padding(
              padding:EdgeInsets.fromLTRB(15, 0, 5, 5) ,
              child: Column(
                children: <Widget>[

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            child: Icon(Icons.check_circle_outline,color: Colors.blue,),
                          ),
                        ],
                      ),
                      SizedBox(width:8),
                      Container(
                        child: Text("Kundan sharma",style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(width:20),
                      Column(
                        children: <Widget>[
                          Container(
                            child:Text('Reporter',style: GoogleFonts.roboto(color: Colors.blue,),),


                          ),

                        ],
                      ),
                      SizedBox(width:7),
                      Column(
                        children: <Widget>[
                          Container(
                            child: Icon(Icons.person_add,),
                          ),
                        ],
                      ),

                      SizedBox(width:48),


                      Column(
                        children: <Widget>[
                          Container(
                            child: Icon(Icons.more_horiz,

                            ),
                          ),
                        ],
                      ),


                    ],
                  ),

                  Divider(),
                  Row(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(height: 100,width: 200,
                            child:  Text("To pursue a career in a growth oriented firm and become a key player in meeting the goals of the organization ....  Read More",style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.normal),),
                          ),
                        ],
                      ),
                      SizedBox(width: 12,),
                      Row(
                        children: <Widget>[
                          Container(height: 92,width:120 ,
                            child: Image.asset('logos/one.jpg'),
                            padding: EdgeInsets.fromLTRB(1,0,1,0),
                            decoration:  BoxDecoration(
                              border: Border.all(width: 0, color: Colors.black38),
                              borderRadius:  BorderRadius.circular(2),

                            ),

                          ),

                        ],
                      ),

                    ],
                  ),

                  SizedBox(height: 2,),


                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text("12 Oct 2020, 09:10 PM",style: GoogleFonts.montserrat(fontSize: 12,fontWeight: FontWeight.normal),),
                  ),
                  SizedBox(height: 5,),
                  Row(
                    children: <Widget>[
                      Container(
                        child: Icon(Icons.visibility,

                        ),
                      ),
                      SizedBox(width: 5.0,),

                  Column(
                    children: <Widget>[
                  Container(
                   child: Text("5 Views",style: GoogleFonts.montserrat(fontSize: 12,fontWeight: FontWeight.normal,color: Colors.blue,),),
                  ),
                  ],
                  ),
                      SizedBox(width: 40.0,),
                      Column(
                        children: <Widget>[
                          Container(
                            child: Icon(Icons.favorite,color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 10.0,),
                      Column(
                        children: <Widget>[
                          Container(
                            child: Text("5 Follow",style: GoogleFonts.montserrat(fontSize: 12,fontWeight: FontWeight.normal,color: Colors.blue,),),
                          ),
                        ],
                      ),

                    ],
                  ),
                  SizedBox(height: 5.0,),

                  Container(

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("50 Likes",style: GoogleFonts.montserrat(fontSize: 12,fontWeight: FontWeight.normal),),
                        Row(
                          children: <Widget>[
                            Text("3 Comments",style: GoogleFonts.montserrat(fontSize: 12,fontWeight: FontWeight.normal),),
                            SizedBox(width:80.0 ,),
                            Text("10 Shared",style: GoogleFonts.montserrat(fontSize: 12,fontWeight: FontWeight.normal),),
                          ],
                        ),
                      ],
                    ),


                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(Icons.thumb_up,
                            size:18.0,
                          ),
                          SizedBox(width: 5.0,),
                          Text("Like",style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.normal),)
                        ],
                      ),


                      Row(
                        children: <Widget>[
                          Icon(Icons.mode_comment,
                            size:18.0,
                          ),
                          SizedBox(width: 5.0,),
                          Text("Comment",style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.normal),)
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.share,
                            size:18.0,
                          ),
                          SizedBox(width: 5.0,),
                          Text("Share",style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.normal),)
                        ],
                      ),
                    ],
                  ),


                ],

              ),
            ),
          ),
        Divider(),
        Card(
          color: Colors.white,
          child:Padding(

            padding:EdgeInsets.fromLTRB(15, 0, 5, 5) ,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          child: Icon(Icons.check_circle_outline,color: Colors.blue,),
                        ),
                      ],
                    ),
                    SizedBox(width:8),
                    Container(
                      child: Text("Ankita sharma",style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(width:20),
                    Column(
                      children: <Widget>[
                        Container(
                          child:Text('Reporter',style: GoogleFonts.roboto(color: Colors.blue,),),


                        ),

                      ],
                    ),
                    SizedBox(width:7),
                    Column(
                      children: <Widget>[
                        Container(
                          child: Icon(Icons.person_add,),
                        ),
                      ],
                    ),

                    SizedBox(width:48),

                    Column(
                      children: <Widget>[
                        Container(
                          child: Icon(Icons.more_horiz,

                          ),
                        ),
                      ],
                    ),


                  ],
                ),

                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(height: 100,width: 200,
                          child:  Text("To pursue a career in a growth oriented firm and become a key player in meeting the goals of the organization ....  Read More",style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.normal),),
                        ),
                      ],
                    ),
                    SizedBox(width: 12,),
                    Row(
                      children: <Widget>[
                        Container(height: 92,width:120 ,
                          child: Image.asset('logos/one.jpg'),
                          padding: EdgeInsets.fromLTRB(1,0,1,0),
                          decoration:  BoxDecoration(
                            border: Border.all(width: 0, color: Colors.black38),
                            borderRadius:  BorderRadius.circular(2),

                          ),

                        ),

                      ],
                    ),

                  ],
                ),
                SizedBox(height: 2,),

                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text("10 Oct 2020, 07:10 AM",style: GoogleFonts.montserrat(fontSize: 12,fontWeight: FontWeight.normal),),
                ),
                SizedBox(height: 5,),
                Row(
                  children: <Widget>[
                    Container(
                      child: Icon(Icons.visibility,

                      ),
                    ),
                    SizedBox(width: 5.0,),

                    Column(
                      children: <Widget>[
                        Container(
                          child: Text("5 Views",style: GoogleFonts.montserrat(fontSize: 12,fontWeight: FontWeight.normal,color: Colors.blue,),),
                        ),
                      ],
                    ),
                    SizedBox(width: 40.0,),
                    Column(
                      children: <Widget>[
                        Container(
                          child: Icon(Icons.favorite,color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10.0,),
                    Column(
                      children: <Widget>[
                        Container(
                          child: Text("5 Follow",style: GoogleFonts.montserrat(fontSize: 12,fontWeight: FontWeight.normal,color: Colors.blue,),),
                        ),
                      ],
                    ),
                  ],
                ),



                SizedBox(height: 5.0,),
                Container(

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("10 Likes",style: GoogleFonts.montserrat(fontSize: 12,fontWeight: FontWeight.normal),),
                      Row(
                        children: <Widget>[
                          Text("5 Comments",style: GoogleFonts.montserrat(fontSize: 12,fontWeight: FontWeight.normal),),
                          SizedBox(width:85.0 ,),
                          Text("7 Shared",style: GoogleFonts.montserrat(fontSize: 12,fontWeight: FontWeight.normal),),
                        ],
                      ),
                    ],
                  ),


                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.thumb_up,
                          size:18.0,
                        ),
                        SizedBox(width: 5.0,),
                        Text("Like",style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.normal),)
                      ],
                    ),


                    Row(
                      children: <Widget>[
                        Icon(Icons.mode_comment,
                          size:18.0,
                        ),
                        SizedBox(width: 5.0,),
                        Text("Comments",style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.normal),)
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.share,
                          size:18.0,
                        ),
                        SizedBox(width: 5.0,),
                        Text("Share",style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.normal),)
                      ],
                    ),
                  ],
                ),


              ],

            ),
          ),
        ),


        ],

      );
  }
}
