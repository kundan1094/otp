import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:identityapp/MeraKamCustomWidget.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
class MYPersonalDetailsPage2 extends StatefulWidget {
  @override
  _MYPersonalDetailsPage2State createState() => _MYPersonalDetailsPage2State();
}
class _MYPersonalDetailsPage2State extends State<MYPersonalDetailsPage2> {
  final _formKey = GlobalKey<FormState>();
  var txt = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
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
                child:Text("Reviews",
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
                        SizedBox(
                          width: 5.0,
                        ),

                        Container(child:
                        Text('5/5',
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        SmoothStarRating(
                            allowHalfRating: false,
                            onRated: (v) {
                            },
                            starCount: 5,

                            size: 18.0,
                            isReadOnly:true,

                            color: Colors.black,
                            borderColor: Colors.yellow[900],
                            spacing:0.0
                        ),


                        SizedBox(
                          width: 110.0,
                        ),

                        Expanded(
                          child:
                          Text('24 reviews',style: GoogleFonts.roboto(fontSize: 16,
                            fontWeight: FontWeight.w500,),),

                        ),

                      ],
                    ),
                  ),

                  Row(
                    children: <Widget>[
                      Container(padding: EdgeInsets.only(top:10,left:90),
                        child:
                        SmoothStarRating(
                            allowHalfRating: false,
                            onRated: (v) {
                            },
                            starCount: 5,

                            size: 30.0,
                            isReadOnly:true,

                            color: Colors.black,
                            borderColor: Colors.black54,
                            spacing:0.0
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text('Describe the person',style: GoogleFonts.montserrat(fontSize: 16,
                        fontWeight: FontWeight.w500,color: Colors.blue[900],),),
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Divider(

                    color: Colors.blue[900],
                  ),


                  Stack(
                    children: <Widget>[
                      Container(
                        height: 150.0,

                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.0),
                              spreadRadius: 2.0,
                              blurRadius: 1.0),
                        ], color: Colors.white),
                      ),

                      Positioned(
                        top: 8.0,
                        left: 10.0,

                        child: Row(
                          children: <Widget>[
                            Container(
                              height: 50.0,
                              width: 50.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  image: DecorationImage(
                                      image: AssetImage('logos/kgn.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(width: 70.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[

                                Text(
                                  'Amit Aggarwal',
                                  style: GoogleFonts.roboto(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),

                                Row(
                                  children: <Widget>[

                                    Container(padding: EdgeInsets.only(top:5,left:90),
                                      width: MediaQuery.of(context).size.width - 170.0,
                                      child: SmoothStarRating(
                                          allowHalfRating: false,
                                          onRated: (v) {
                                          },
                                          starCount: 5,

                                          size: 18.0,
                                          isReadOnly:true,

                                          color: Colors.black,
                                          borderColor: Colors.yellow[900],
                                          spacing:0.0
                                      ),
                                    )
                                  ],
                                ),



                              ],
                            ),

                          ],

                        ),



                      ),



                      Row(
                        children: <Widget>[

                          Container(padding: EdgeInsets.only(top:70,left: 10,right: 5),
                            width: MediaQuery.of(context).size.width - 20.0,
                            child: Text(
                              'This person is good with his skill. He completed his work with perfect finishing on time.i wish a gud luck for his future..',
                              style: GoogleFonts.roboto(
                                  fontSize: 14.0, color: Colors.grey),
                            ),


                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(padding: EdgeInsets.only(top:130,left: 260),
                            child:
                            Text(
                              '20-Feb-20',
                              style: GoogleFonts.roboto(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Stack(
                    children: <Widget>[
                      Container(
                        height: 150.0,

                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.0),
                              spreadRadius: 0.0,
                              blurRadius: 1.0),
                        ], color: Colors.white),
                      ),

                      Positioned(
                        top: 8.0,
                        left: 10.0,

                        child: Row(
                          children: <Widget>[
                            Container(
                              height: 50.0,
                              width: 50.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  image: DecorationImage(
                                      image: AssetImage('logos/kgn.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(width: 70.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[

                                Text(
                                  'Amit Aggarwal',
                                  style: GoogleFonts.roboto(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),

                                Row(
                                  children: <Widget>[

                                    Container(padding: EdgeInsets.only(top:5,left:90),
                                      width: MediaQuery.of(context).size.width - 170.0,
                                      child: SmoothStarRating(
                                          allowHalfRating: false,
                                          onRated: (v) {
                                          },
                                          starCount: 5,

                                          size: 18.0,
                                          isReadOnly:true,

                                          color: Colors.black,
                                          borderColor: Colors.yellow[900],
                                          spacing:0.0
                                      ),
                                    )
                                  ],
                                ),


                              ],
                            ),

                          ],

                        ),



                      ),
                      Row(
                        children: <Widget>[

                          Container(padding: EdgeInsets.only(top:70,left: 10,right: 5),
                            width: MediaQuery.of(context).size.width - 20.0,
                            child: Text(
                              'This person is good with his skill. He completed his work with perfect finishing on time.i wish a gud luck for his future..',
                              style: GoogleFonts.roboto(
                                  fontSize: 14.0, color: Colors.grey),
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(padding: EdgeInsets.only(top:130,left: 260),
                            child:
                            Text(
                              '20-Feb-20',
                              style: GoogleFonts.roboto(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Stack(
                    children: <Widget>[
                      Container(
                        height: 150.0,

                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.0),
                              spreadRadius: 2.0,
                              blurRadius: 1.0),
                        ], color: Colors.white),
                      ),

                      Positioned(
                        top: 8.0,
                        left: 10.0,

                        child: Row(
                          children: <Widget>[
                            Container(
                              height: 50.0,
                              width: 50.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  image: DecorationImage(
                                      image: AssetImage('logos/kgn.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(width: 70.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[

                                Text(
                                  'Amit Aggarwal',
                                  style: GoogleFonts.roboto(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),

                                Row(
                                  children: <Widget>[

                                    Container(padding: EdgeInsets.only(top:5,left:90),
                                      width: MediaQuery.of(context).size.width - 170.0,
                                      child: SmoothStarRating(
                                          allowHalfRating: false,
                                          onRated: (v) {
                                          },
                                          starCount: 5,

                                          size: 18.0,
                                          isReadOnly:true,

                                          color: Colors.black,
                                          borderColor: Colors.yellow[900],
                                          spacing:0.0
                                      ),
                                    )
                                  ],
                                ),


                              ],
                            ),

                          ],

                        ),



                      ),
                      Row(
                        children: <Widget>[

                          Container(padding: EdgeInsets.only(top:70,left: 10,right: 5),
                            width: MediaQuery.of(context).size.width - 20.0,
                            child: Text(
                              'This person is good with his skill. He completed his work with perfect finishing on time.i wish a gud luck for his future..',
                              style: GoogleFonts.roboto(
                                  fontSize: 14.0, color: Colors.grey),
                            ),


                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(padding: EdgeInsets.only(top:130,left: 260),
                            child:
                            Text(
                              '20-Feb-20',
                              style: GoogleFonts.roboto(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

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