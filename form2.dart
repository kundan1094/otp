import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:identityapp/MeraKamCustomWidget.dart';
class MYPersonalDetailsPage2 extends StatefulWidget {
  @override
  _MYPersonalDetailsPage2State createState() => _MYPersonalDetailsPage2State();
}
class _MYPersonalDetailsPage2State extends State<MYPersonalDetailsPage2> {
  final _formKey = GlobalKey<FormState>();
  var txt = TextEditingController();
  String _currentSelectedGender="Male";
  String _currentSelectedPincode="800001";
  var Pincode=['800001','800002','800003','800004','800005'];
  void _handleChangedPincode(String value) {
    setState(() {
      _currentSelectedPincode=value;
    });
  }
  String _currentSelectedDistrict="Patna";
  var District=['Patna','Nasik','Pune','New Delhi','Ludhiyana'];
  void _handleChangedDistrict(String value) {
    setState(() {
      _currentSelectedDistrict=value;
    });

  }
  String _currentSelectedState="Bihar";
  var State=['Bihar','UP','Bangal','Delhi','Punjab'];
  void _handleChangedState(String value) {
    setState(() {
      _currentSelectedState=value;
    });
  }
  String _currentSelectedProof="0 Year";
  var proof=['0 Year','1 Year','2 Year','3 Year','3< Year'];
  void _handleChangedProof(String value) {
    setState(() {
      _currentSelectedProof=value;
    });
  }
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
                padding: EdgeInsets.only(top:20,left:10,right: 10),
                children: <Widget>[
                  Container(
                    child: Row(

                      children: <Widget>[
                        Container(
                          child: Text("Select the strengths of the skills",
                            style: GoogleFonts.montserrat(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.blue[900]),
                            textAlign: TextAlign.center,),
                        ),


                      ],
                    ),
                  ),
                  //Search Box
                  Row(

                    children: <Widget>[
                      Container(
                        child: Text("Carpenter",
                          style: GoogleFonts.montserrat(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                          textAlign: TextAlign.center,),
                      ),
                      SizedBox(
                        width: 230.0,
                      ),
                      IconButton(icon:Icon(Icons.keyboard_arrow_right,color:Colors.black ,)) ,

                    ],
                  ),
                  Row(

                    children: <Widget>[
                      Container(
                        child: Text("Painter",
                          style: GoogleFonts.montserrat(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                          textAlign: TextAlign.center,),
                      ),
                      SizedBox(
                        width: 245.0,
                      ),
                      IconButton(icon:Icon(Icons.keyboard_arrow_right,color:Colors.black ,)) ,

                    ],
                  ),
                  Row(

                    children: <Widget>[
                      Container(
                        child: Text("Electricine",
                          style: GoogleFonts.montserrat(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                          textAlign: TextAlign.center,),
                      ),
                      SizedBox(
                        width: 225.0,
                      ),
                      IconButton(icon:Icon(Icons.keyboard_arrow_right,color:Colors.black ,)) ,

                    ],
                  ),
                  Row(

                    children: <Widget>[
                      Container(
                        child: Text("Preferred Location To work",
                          style: GoogleFonts.montserrat(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.blue[900]),
                          textAlign: TextAlign.center,),
                      ),


                    ],
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
                        //isDense: true,
                        //labelText: 'Search & Add Services',
                        hintText: 'Totu, Shimla, Himachal Pradesh',
                        hintStyle: TextStyle(fontSize: 14,),

                        /*border: UnderlineInputBorder(
                  ),*/
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

                        /*labelStyle: GoogleFonts.roboto(
                  fontSize: 15,
                ),*/

                        suffixIcon: Icon(Icons.keyboard_voice,size: 25,color:Colors.blue[900]),
                        prefixIcon: Icon(Icons.search,size: 25,color: Colors.blue[900]),
                      ),

                    ),
                  ),
                    SizedBox(
                      height: 10.0,
                    ),


                  MyDropDownList(
                    LText: "You work as",
                    currentSelectdValue: _currentSelectedState,
                    onChanged: _handleChangedState,
                    list: State,
                  ),


                  MyDropDownList(
                    LText: "Payment Term",
                    currentSelectdValue: _currentSelectedProof,
                    onChanged: _handleChangedProof,
                    list: proof,
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

