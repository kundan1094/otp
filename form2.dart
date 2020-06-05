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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text('IDENTITY DETAILS',style: GoogleFonts.montserrat(
                      textStyle:TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                        ),

                      ],
                    ),
                  ),
                  MyTextFormFields(LText: 'Company Name',),
                  MyTextFormFields(LText: 'Company/Working Address',),
                  MyTextFormFields(LText: 'City/Village/Town',),
                  MyDropDownList(
                    LText: "State",
                    currentSelectdValue: _currentSelectedState,
                    onChanged: _handleChangedState,
                    list: State,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child:MyDropDownList(
                          LText: "District",
                          currentSelectdValue: _currentSelectedDistrict,
                          onChanged: _handleChangedDistrict,
                          list: District,
                        ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(child:
                      MyDropDownList(
                        LText: "Tehsil",
                        currentSelectdValue: _currentSelectedDistrict,
                        onChanged: _handleChangedDistrict,
                        list: District,
                      ),
                      ),
                    ],),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child:MyDropDownList(
                          LText: "Location",
                            currentSelectdValue: _currentSelectedDistrict,
                            onChanged: _handleChangedDistrict,
                            list: District,
                        ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(child:
                      MyDropDownList(
                        LText: "Pincode",
                        currentSelectdValue: _currentSelectedPincode,
                        onChanged: _handleChangedPincode,
                        list: Pincode,
                      ),
                      ),
                    ],),

                  MyDropDownList(
                    LText: "Period of Experience",
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

