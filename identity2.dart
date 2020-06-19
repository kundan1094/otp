import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:identityapp/MeraKamCustomWidget.dart';
import 'personalDetails.dart';


class IdentityDetails2 extends StatefulWidget {
  @override
  _IdentityDetailsState createState() => _IdentityDetailsState();
}
class _IdentityDetailsState extends State<IdentityDetails2> {
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


                      ],
                    ),
                  ),
                  MyTextFormFields(LText: 'Instagram',),
                  MyTextFormFields(LText: 'Twitter',),
                  MyTextFormFields(LText: 'Youtube',),
                  MyTextFormFields(LText: 'Facebook',),
                   Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(child:
                    Center( child:
                    Container(
                      //padding: const EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.black38),
                        borderRadius:  BorderRadius.circular(100),
                      ),
                      child:
                      Stack(
                        alignment: const Alignment(1.3, 1.3),
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('logos/kgn.jpg'),
                            radius: 50,
                          ),
                          Container(
                            child: IconButton(color: Colors.indigo,
                              onPressed: (){},
                              iconSize: 25,
                              icon: Icon(Icons.add_a_photo),
                              disabledColor: Colors.deepOrange,
                            ),
                          ),
                        ],
                      ),
                    ),
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
                onPressed: () {
                  // Validate returns true if the form is valid, otherwise false.
                  if (_formKey.currentState.validate()) {

                    Navigator.push(context, MaterialPageRoute(builder: (context) => personalDetails()),);

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