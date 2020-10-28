import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';


class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
        titleSpacing: 0,
        backgroundColor: Colors.white,
          leading:Icon(Icons.arrow_back,size: 25,color: Colors.black,),

        ),

        body: ListView(

        children: <Widget>[
          SizedBox(height: 50,),
          Row(children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(70,0,0,0),
                  child:CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.black12,

                  child: CircleAvatar(
                    radius: 18.0,
                    backgroundImage: AssetImage('logos/kgn.jpg'),
                  ),

                ),
                ),

              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(0,0,0,0),

                    child:CircleAvatar(
                      radius: 20,
                      backgroundColor: Color(0xffFDCF09),
                      child:  Text('K'),
                    )


                ),

              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(0,0,0,0),

                    child:CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.redAccent,
                      child: Text('R'
                      ),
                    )
                ),

              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(0,0,0,0),

                    child:CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.greenAccent,
                      child: Text('A'
                      ),
                    )
                ),

              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(0,0,0,0),

                    child:CircleAvatar(

                      radius: 25,
                      backgroundColor: Colors.grey,
                      child: Text('40k'
                      ),
                    )
                ),

              ],
            ),
          ],),
          SizedBox(height: 20,),
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(80,0,0,0),
                child: Text('Influencer Of The Week',style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.lightBlue),),
              ),
            ],
          ),

          SizedBox(height: 100,),

          Column(


            children: <Widget>[
              Container(

                padding: EdgeInsets.fromLTRB(35,0,35,0),
                height: 45,
                child: Material(
                  color: Colors.lightBlue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                  ),
                  elevation: 3,

                  child: FlatButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(45))),
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 30,
                          width: 30,
                      child:CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                          child:   Icon(Icons.phone,size: 25,color: Colors.blue,),
                        ),
                        ),
                        SizedBox(width: 20,),
                        Text('Mobile No SignIn',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            )
                        ),
                      ],
                    ),
                  ),
                ),
              ),

            ],
          ),
          SizedBox(height: 20,),

          Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(35,0,35,0),
                height: 45,

                child: Material(
                  color: Colors.blue[900],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                  ),
                  elevation: 3,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(45))),
                    color: Colors.white,

                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 30,
                          width: 30,
                      child:CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                          child:   CircleAvatar(
                            radius: 20.0,
                            backgroundImage: AssetImage('logos/fac.png'),
                            backgroundColor: Colors.white,
                          ),
                      ),
                        ),
                        SizedBox(width: 20,),
                        Text('Facebook SignIn',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            )
                        ),
                      ],
                    ),
                  ),
                ),
              ),

            ],
          ),
          SizedBox(height: 20,),

          Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(35,0,35,0),
                height: 45,
                child: Material(
                  color: Colors.red,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                  ),
                  elevation: 3,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(45))),
                    color: Colors.white,

                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 30,
                          width: 30,
                      child:CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                          child:   CircleAvatar(
                            radius: 25.0,
                            backgroundImage: AssetImage('logos/goo.png'),
                            backgroundColor: Colors.white,
                          ),
                        ),
                        ),
                        SizedBox(width: 20,),
                        Text('GOOGLE SignIn',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            )
                        ),
                      ],
                    ),

                  ),
                ),
              ),

            ],
          )





        ],

      ),
    );
  }
}