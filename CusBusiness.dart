import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:identityapp/MeraKamCustomWidget.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'CusSelectSkill.dart';

int _selectedServices=-1 ;

class Business extends StatefulWidget {
  @override
  _BusinessState createState() => _BusinessState();
}
class _BusinessState extends State<Business> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBarMeraKam( Heading: "Business"),
      ),
      body:Container(
          margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(//height: 10,width: 80,
                child: Image.asset('logos/kaam.png'),
                padding: EdgeInsets.fromLTRB(100,7,100,7),
              ),
              Text('Are You Looking For',
                style:GoogleFonts.montserrat(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black),
              ),
              SizedBox(height: 50,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  //SizedBox(height: 10,),
                  Container(
                    //alignment: Alignment.center,
                    margin: EdgeInsets.only(right: 10,),
                    //padding: EdgeInsets.only(top: 0,bottom: 3,),
                    height: 84,
                    width: 120,
                    child:GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedServices==0 ? _selectedServices=-1: _selectedServices= 0;
                        });
                      },
                      child: GridViewItem(
                        top: 0,
                        iconData:Column(
                          children: <Widget>[

                            Container(
                              width: 70,
                              child: IconButton(
                                icon: SvgPicture.asset("logos/hand-shake.svg",
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Text('Service',
                              style:GoogleFonts.montserrat(color: Colors.black,fontSize: 20),
                            ),
                          ],
                        ) ,isSelected: _selectedServices==0,),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10,),
                    height: 84,
                    width: 120,
                    child:GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedServices==1 ? _selectedServices=-1: _selectedServices= 1;
                        });
                      },
                      child: GridViewItem(
                        top: 0,
                        iconData:Column(
                          children: <Widget>[
                            Container(
                              width: 70,
                              child:IconButton(
                                icon: Icon(
                                  Icons.shopping_cart,
                                  color: Colors.black,
                                  size: 40,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 3,),
                              child: Text('Product',style:GoogleFonts.montserrat(color: Colors.black,fontSize: 20),),),
                          ],
                        ),isSelected: _selectedServices==1,),
                    ),
                  ),


                ],
              ),

            ],
          )
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
      //bottomNavigationBar: BottamAppBarMeraKam(link:'/businessListing',),
    );
  }
}

