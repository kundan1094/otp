import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'MeraKamCustomWidget.dart';
class MyAccount extends StatefulWidget {
  @override
  _MyAccountState createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  String _currentSelectedDistrict="Patna";
  var District=['Patna','Nasik','Pune','New Delhi','Ludhiyana'];
  void _handleChangedDistrict(String value) {
    setState(() {
      _currentSelectedDistrict=value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        leading: IconButton(
          icon: Icon(Icons.arrow_back,size: 25,),
          onPressed: () {
            Navigator.pop(context);},
        ),
        title: Center(
            child:Text("My Account",
              style:GoogleFonts.montserrat(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)
        ),
        actions: <Widget>[
          Container(//height: 10,width: 80,
            child: Image.asset('logos/kaam.png'),
            padding: EdgeInsets.fromLTRB(10,7,10,7),
          ),
        ],
      ),

      body:Column(


        children: <Widget>[

          Expanded(
            child: ListView(
             padding: EdgeInsets.only(top:0,left:10,right: 10),
              children: <Widget>[
                Container(

                  child: Row(

                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(child: Text('Reg. ID 23467',style: GoogleFonts.roboto(fontSize: 16,),),),
                       SizedBox(
                        width: 55.0,
                      ),

                      Expanded(
                        child:MyDropDownList(
                          LText: "",
                          currentSelectdValue: _currentSelectedDistrict,
                          onChanged: _handleChangedDistrict,
                          list: District,
                        ),
                      ),

                    ],
                  ),
                ),
                Stack(
                  //fit: StackFit.passthrough,
                  alignment: Alignment(0,0),
                  children: <Widget>[
                    Row(  children: <Widget>[
                      Expanded(flex: 10,
                        child:
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.blue[900]),
                            borderRadius: BorderRadius.circular(25.0),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black38,
                                blurRadius: 2.0,
                                spreadRadius: 0.0,
                                offset: Offset(2.0, 2.0), // shadow direction: bottom right
                              )
                            ],
                          ),
                          alignment: Alignment.center,
                          //margin: EdgeInsets.only(top: 40),
                          height: 65,
                          //color: Colors.red,
                          child:Column(

                            children:[
                              SizedBox(
                                height: 10.0,
                              ),
                              Text('60 coins in Wallet',
                                style: GoogleFonts.roboto(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,

                                ),
                              ),
                              SizedBox(
                                height: 13.0,
                              ),



                              Text('Profile 60%',
                                style: GoogleFonts.roboto(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,


                                ),
                              ),
                            ],

                          ),




                        ),

                      ),
                      Expanded(child: Container(),),
                      Expanded(flex: 10,
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.blue[900]),

                            borderRadius: BorderRadius.circular(25.0),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black38,
                                blurRadius: 2.0,
                                spreadRadius: 0.0,
                                offset: Offset(2.0, 2.0), // shadow direction: bottom right
                              )
                            ],
                          ),
                          //margin: EdgeInsets.only(top: 40),
                          height: 65,
                          //color: Colors.deepOrange,
                          child:Column(

                            children:[
                              SizedBox(
                                height: 10.0,
                              ),

                              Text('24 reviews',
                                style: GoogleFonts.roboto(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,

                                ),
                              ),
                              SizedBox(
                                height: 13.0,
                              ),


                              Row(
                                children:<Widget>[
                                  SizedBox(
                                    width: 40.0,
                                  ),
                                  Container(child:
                                  Text('3.5/5',
                                    style: GoogleFonts.roboto(
                                      fontSize: 11,
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

                                      size: 15.0,
                                      isReadOnly:true,

                                      color: Colors.black,
                                      borderColor: Colors.yellow[900],
                                      spacing:0.0
                                  )

                                ],
                              )




                            ],
                          ),
                        ),
                      ),
                    ],

                    ),
                    Container(//color: Colors.white,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.white,
                        /*boxShadow: [
                    BoxShadow(
                      color: Colors.black38,
                      blurRadius: 2.0,
                      spreadRadius: 0.0,
                      offset: Offset(2.0, 2.0), // shadow direction: bottom right
                    )
                  ],*/
                      ),
                      child: Container(
                        margin: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60.0),
                          color: Colors.blue[900],
                          /*boxShadow: [
                    BoxShadow(
                      color: Colors.black38,
                      blurRadius: 2.0,
                      spreadRadius: 0.0,
                      offset: Offset(2.0, 2.0), // shadow direction: bottom right
                    )
                  ],*/
                        ),
                        //color: Colors.white,
                        child: Icon(Icons.person,color: Colors.white,size: 60,),
                      ),)

                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  children:<Widget>[
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(width: 50,height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.blue[900]),
                      ),
                      child: Image.asset('logos/kgn.jpg'),
                      padding: EdgeInsets.fromLTRB(10,7,10,7),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Container(width: 50,height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.blue[900]),
                      ),
                      child: Image.asset('logos/kgn.jpg'),
                      padding: EdgeInsets.fromLTRB(10,7,10,7),


                    ),
                    SizedBox(
                      width: 90.0,
                    ),
                    Container(width: 50,height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.blue[900]),
                      ),
                      child: Image.asset('logos/kgn.jpg'),
                      padding: EdgeInsets.fromLTRB(10,7,10,7),


                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Container(width: 50,height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.blue[900]),
                      ),
                      child: Image.asset('logos/kgn.jpg'),
                      padding: EdgeInsets.fromLTRB(10,7,10,7),


                    ),

                  ],
                ),
                SizedBox(
                  height: 350.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget>[
                  Text('Feedback & suggestion',
                    style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,color: Colors.blue[900]

                    ),
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
              alignment: Alignment.center,
              onPressed: () {
                Navigator.pushNamed(context, '/skill-form');
              },
            ),
            IconButton(
              icon: Icon(Icons.live_help,color: Colors.white,size: 25,),
              alignment: Alignment.center,
              onPressed: null,
            )
          ],
        ),
      ),
    );
  }
}
