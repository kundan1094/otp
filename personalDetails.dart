import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:identityapp/MeraKamCustomWidget.dart';
import 'package:identityapp/identity1.dart';


class personalDetails extends StatefulWidget {
  @override
  _IdentityDetailsState createState() => _IdentityDetailsState();
}
class _IdentityDetailsState extends State<personalDetails> {
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
                        Text('PERSONAL DETAILS',style: GoogleFonts.montserrat(
                          textStyle:TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        ),

                      ],
                    ),
                  ),
                  MyTextFormFields(LText: 'Enter User Name',),
                  MyTextFormFields(LText: 'User Alternative Mobile Number',),
                  MyTextFormFields(LText: 'User Date of Birth',),
                  MyFormContainer(
                    data:FormField<String>(
                      builder: (FormFieldState<String> state) {
                        return InputDecorator(
                          decoration: InputDecoration(
                            //contentPadding: EdgeInsets.fromLTRB(3, 5, 0, 0),
                            labelStyle: GoogleFonts.roboto(
                              fontSize: 16,
                            ),
                            labelText: "Gender",
                            hintText: 'Please select Gender',
                            border: InputBorder.none,
                          ),
                          //isEmpty: _currentSelectedValue == 'Male',
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              value: _currentSelectedGender,
                              isDense: true,
                              onChanged: (String newValue) {
                                setState(() {
                                  _currentSelectedGender = newValue;
                                  state.didChange(newValue);
                                });
                              },
                              items: ['Male','Female'].map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  MyTextFormFields(LText: 'User Personal Mail ID',),


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
                onPressed: () {
                  // Validate returns true if the form is valid, otherwise false.
                  if (_formKey.currentState.validate()) {

                     Navigator.push(context, MaterialPageRoute(builder: (context) => IdentityDetails1()),);

                  }
                },
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