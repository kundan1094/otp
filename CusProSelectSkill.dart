import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:identityapp/MeraKamCustomWidget.dart';
//List<int> _selected=[];
int _selected=-1;
final List<String> _Services = [
  'Carpenter',
  'Plumber',
  'Electrician',
  'Painter',
  'Welder',
  'Mason',
  'Labour',
  'Floor Mason',
  'Gate & Shutter',

];

class CusProSelectSkill extends StatefulWidget {
  @override
  _BusinessListingState createState() => _BusinessListingState();
}
class _BusinessListingState extends State<CusProSelectSkill> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBarMeraKam( Heading: "Profile Update "),
      ),
      body:Container(
          margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child:Column(
            children: <Widget>[
              //Heading of page
              Container(
                alignment: Alignment.centerLeft,
                //padding: EdgeInsets.fromLTRB(0, 10, 10, 20),
                child: Text('SELECT SKILL OR SERVICE',
                  style:GoogleFonts.montserrat(
                    textStyle:TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue[900]
                    ),
                  ),
                ),
              ),


              Expanded(
                child: ListView(
                  padding: EdgeInsets.only(left: 0,right: 20),
                  children: _Services.map((sdata){
                    return ListTileRadio(
                      heading: sdata,
                      //selected: _selected.contains(_Services.indexOf(sdata))?true:false,
                      selected: _selected==_Services.indexOf(sdata),
                      //selectedIcon: Icons.keyboard_arrow_right,
                      selectedIcon: Icons.arrow_forward_ios,
                      unselectedIcon: Icons.keyboard_arrow_right,
                      onChanged:(bool newValue){
                        setState(() {
                          //_selected.contains(_Services.indexOf(sdata))?_selected.remove(_Services.indexOf(sdata)):_selected.add(_Services.indexOf(sdata));
                          _selected==_Services.indexOf(sdata)?_selected=-1:_selected=_Services.indexOf(sdata);
                        });
                      },
                    );}).toList(),
                ),
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