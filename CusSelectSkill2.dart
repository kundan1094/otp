import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:identityapp/MeraKamCustomWidget.dart';
//List<int> _selected=[];
int _selected=-1;
final List<String> _Services = [
  'Home Help',
  'Elite Domestic Help',
  'Building Maintanance',
  'Domestic Repair & Service',
  'Beauty & Wellness',
  'Healthcare Services',
  'Financial Services',
  'Legal Services',
  'Event Services',

];

class CusSelectSkill2 extends StatefulWidget {
  @override
  _BusinessListingState createState() => _BusinessListingState();
}
class _BusinessListingState extends State<CusSelectSkill2> {
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
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Text('SELECT SKILL OR SERVICES',
                  style:GoogleFonts.montserrat(
                    textStyle:TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(width: 322,height: 45,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),

                decoration:(
                BoxDecoration(
                  border: Border.all(
                    color: Colors.blue
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                )
                ),

                child: Text('ELECTRICIAN',
                  style:GoogleFonts.montserrat(
                    textStyle:TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue[900]
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
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
                    hintText: 'Search, Select Or Add New Skill Service',
                    hintStyle: TextStyle(fontSize: 14,),
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
                    suffixIcon: Icon(Icons.keyboard_voice,size: 25,color:Colors.blue[900]),
                    prefixIcon: Icon(Icons.search,size: 25,color: Colors.blue[900]),
                  ),

                ),
              ),

              Expanded(
                child: ListView(
                  padding: EdgeInsets.only(left: 10,right: 10),
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