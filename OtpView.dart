import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';

class OtpView extends StatefulWidget {
  @override
  _OtpViewState createState() => _OtpViewState();
}

class _OtpViewState extends State<OtpView> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

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
            child:Text("varification",
              style:GoogleFonts.montserrat(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),

            ),),

          actions: <Widget>[
            Container(//height: 10,width: 80,
              child:Image(
                image: AssetImage('images/kaam.png'),),
              padding: EdgeInsets.fromLTRB(10,7,10,7),),],

        ),
      ),
      body:ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: <Widget>[Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                  left: 2.0, top: 15.0, right:78.0),
              child: Text("Mobile Number Varification",
                style: GoogleFonts.montserrat(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(
                  left: 2.0, top: 15.0, right:125.0),
              child: Text("Enter parmanent Mobile number",
                style: GoogleFonts.montserrat(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.lightBlueAccent),
                textAlign: TextAlign.center,
              ),
            ),


            Row(
              children: <Widget>[

                Flexible(
                  child: new Container(
                  ),
                  flex: 1,
                ),
                Flexible(
                  child: Image(
                    image: AssetImage('images/ind.jpg'),
                    height: 100.0,
                    width: 100.0,),
                ),
                Flexible(
                  child: new Container(
                  ),
                  flex: 1,
                ),

                Flexible(
                  child: new TextFormField(
                    textAlign: TextAlign.center,
                    autofocus: false,
                    enabled: false,
                    initialValue: "+91",
                    style: GoogleFonts.montserrat(fontSize: 18.0, color: Colors.black),
                  ),
                  flex: 2,
                ),

                Flexible(
                  child: new Container(
                  ),
                  flex: 1,
                ),

                Flexible(
                  child: new TextFormField(
                    textAlign: TextAlign.start,
                    autofocus: false,
                    enabled: true,
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.done,
                    style: TextStyle(fontSize: 18.0, color: Colors.black),
                  ),
                  flex: 9,
                ),

                Flexible(
                  child: new Container(
                  ),
                  flex: 1,
                ),



                Flexible(
                  child:Padding(
                    padding: const EdgeInsets.only(right: 15.0),

                  child: new Container(
                    width: 45.0,
                    height: 30.0,

                    child:RaisedButton(
                      child: Icon(Icons.arrow_forward,size: 25, color: Colors.white,),
                    onPressed: () {},
                        color: Colors.blueAccent,
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(5.0))
                     ),


                  ),


                ),
                  flex: 0,
                ),


              ],
            ),


            Row(

              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                  left: 15.0, top: 20.0, right:25.0),
                  child: Text("Enter Otp Sent to Mobile number...",
                    style: GoogleFonts.montserrat(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.lightBlueAccent),
                    textAlign: TextAlign.center,),
                ),
                Icon(Icons.edit) ,

              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: PinEntryTextField(
                onSubmit: (String pin){
                  showDialog(
                      context: context,
                      builder: (context){
                        return AlertDialog(
                          title: Text("Pin"),
                          content: Text('Pin entered is $pin'),
                        );
                      }
                  ); //end showDialog()

                }, // end onSubmit
              ),
            ), // end Paddin


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 155.0,
                ),

                Icon(Icons.access_time),
                SizedBox(
                  width: 30.0,
                ),
                Flexible(
                  child: new Card(

                      child:Column(
                        mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const ListTile(
                              leading: Icon(Icons.speaker_notes,size: 20,),
                                 title: Center(
                                   child:Text("Autofill Otp",
                                style: TextStyle(fontSize: 8,fontWeight: FontWeight.w600),
                                  ),),
                              subtitle:  Center(
                                child:Text("from message",
                                  style: TextStyle(fontSize:8,fontWeight: FontWeight.w600),
                                ),),


                            ),
                            ],

                      ),


                  ),
                  flex: 1,
                ),

              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 16.0, top: 15.0, right:16.0),
              child: Text("(Please wait reading OTP from Number)",
                style: GoogleFonts.montserrat(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 40.0),
              child: new Container (
                width: 110.0,
                height: 35.0,
                child: new RaisedButton(onPressed: () {
                  //navigate

                },
                    child: Text("PROCEED",
                        style: GoogleFonts.montserrat(fontWeight: FontWeight.w600, color: Colors.white),),
                    textColor: Colors.white,
                    color: Colors.blueAccent,

                        shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(5.0))
                ),
              ),
            ),









          ],
        )],),

      bottomNavigationBar: BottomAppBar(
        color: Colors.blue[900],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_forward,color: Colors.white,size: 25,),
              alignment: Alignment.center,
              onPressed: () {

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

