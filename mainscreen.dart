import 'package:flutter/material.dart';
import 'OtpView.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatelessWidget {
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
            child:Text("Otp Input  ",
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
                      left: 16.0, top: 20.0, right: 16.0),
                  child: Text("Enter your parmanent Mobile number",
                    style: GoogleFonts.montserrat(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    textAlign: TextAlign.center,),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Image(
                    image: AssetImage('images/simp.jpg'),
                    height: 30.0,
                    width: 30.0,),
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
                        style: TextStyle(fontSize: 20.0, color: Colors.black),
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
                        style: TextStyle(fontSize: 20.0, color: Colors.black),
                      ),
                      flex: 9,
                    ),

                    Flexible(
                      child: new Container(
                      ),
                      flex: 1,
                    ),

                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 40.0, bottom: 40.0),
                  child: new Container (
                    width: 150.0,
                    height: 40.0,
                    child: new RaisedButton(onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>OtpView()),);

                    },
                        child: Text("Get OTP"),
                        textColor: Colors.white,
                        color: Colors.red,
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0))
                    ),
                  ),
                )
              ]
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

