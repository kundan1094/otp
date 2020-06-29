import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:identityapp/MeraKamCustomWidget.dart';


List<int> _selected=[];

final List<String> _Services = [
  'Domestic Electrical Repair',
  'Domestic Single Phase Wiring',
  'Domestic Backup Wiring',
  'Domestic Light & Appliances Fittings',
  'Commercial 3 Phase Wiring',
  'Commercial Electrical Repair',
  'Commercial Power Panels Setup',
  'Commercial Power Backup Setup',
  'Power Generator Setup',
];

class CusProELStrnth extends StatefulWidget {
  @override
  _BusinessServicesSState createState() => _BusinessServicesSState();
}
class _BusinessServicesSState extends State<CusProELStrnth> {
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
                padding: EdgeInsets.fromLTRB(10, 10, 10, 20),
                child: Text('SELECT ELECTRICIAN STRENGTH',

                  style:GoogleFonts.montserrat(
                    textStyle:TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue[900]
                    ),
                  ),
                ),
              ),
              //Listing of Language
              Expanded(
                child: ListView(
                  padding: EdgeInsets.only(left: 10,right: 20),
                  children: _Services.map((sdata){
                    return ListTileRadio(
                      heading: sdata,
                      selected: _selected.contains(_Services.indexOf(sdata))?true:false,
                      onChanged:(bool newValue){
                        setState(() {
                          _selected.contains(_Services.indexOf(sdata))?_selected.remove(_Services.indexOf(sdata)):_selected.add(_Services.indexOf(sdata));
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
    );
  }
}