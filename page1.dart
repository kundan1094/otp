import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reasonsapp/MerakamCustomWidget.dart';


int _selectedLang=-1 ;
class MyLang extends StatefulWidget {
  @override
  _MyLangState createState() => _MyLangState();
}
class _MyLangState extends State<MyLang> {
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
              child:Text("Reasons",
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
      body:Container(
          margin: EdgeInsets.fromLTRB(10, 5, 5, 5),
          //margin: EdgeInsets.all(2.0),padding: EdgeInsets.all(2.0),
          /*decoration: new BoxDecoration(
            image: new DecorationImage(image: new AssetImage("logos/log2.png"), fit: BoxFit.cover,),
          ),*/
          child:Column(
            children: <Widget>[

              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
                child: Text('REASONS',
                  style:GoogleFonts.montserrat(
                    textStyle:TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,color: Colors.blue[900],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  children: <Widget>[

                    MyListTile(
                      lang: 'Post Filled',
                      selected:_selectedLang==0?true:false,
                      onChanged: (bool newValue){
                        setState(() {
                          _selectedLang==0?_selectedLang=-1:_selectedLang=0;
                        });
                      },
                    ),
                    MyListTile(
                      lang: 'Wrong Skill Mentioned',
                      selected:_selectedLang==1?true:false,
                      onChanged: (bool newValue){
                        setState(() {
                          _selectedLang==1?_selectedLang=-1:_selectedLang=1;
                        });
                      },
                    ),
                    MyListTile(
                      lang: 'Wrong Address Mentioned',
                      selected:_selectedLang==2?true:false,
                      onChanged: (bool newValue){
                        setState(() {
                          _selectedLang==2?_selectedLang=-1:_selectedLang=2;
                        });
                      },
                    ),
                    MyListTile(
                      lang: 'Fraud Work',
                      selected:_selectedLang==3?true:false,
                      onChanged: (bool newValue){
                        setState(() {
                          _selectedLang==3?_selectedLang=-1:_selectedLang=3;
                        });
                      },
                    ),
                    MyListTile(
                      lang: 'Placement Agency',
                      selected:_selectedLang==4?true:false,
                      onChanged: (bool newValue){
                        setState(() {
                          _selectedLang==4?_selectedLang=-1:_selectedLang=4;
                        });
                      },
                    ),
                    MyListTile(
                      lang: 'Wrong Phone number',
                      selected:_selectedLang==5?true:false,
                      onChanged: (bool newValue){
                        setState(() {
                          _selectedLang==5?_selectedLang=-1:_selectedLang=5;
                        });
                      },
                    ),
                    MyListTile(
                      lang: 'Different Work Details',
                      selected:_selectedLang==6?true:false,
                      onChanged: (bool newValue){
                        setState(() {
                          _selectedLang==6?_selectedLang=-1:_selectedLang=6;
                        });
                      },
                    ),
                    MyListTile(
                      lang: 'Wrong Landmark',
                      selected:_selectedLang==7?true:false,
                      onChanged: (bool newValue){
                        setState(() {
                          _selectedLang==7?_selectedLang=-1:_selectedLang=7;
                        });
                      },
                    ),
                    Row(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
                            child: Text('Write If Some Different Reasons',
                              style:GoogleFonts.roboto(
                                textStyle:TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,color: Colors.blue[900],
                                ),
                              ),
                            ),
                          ),
                          ],

                    ),

                    Row(
                      children: <Widget>[
                        Container(
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
                            width: 320,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),

                              ),
                              autofocus: false,
                            )
                        ),
                      ],
                    ),



                  ],
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
              alignment: Alignment.center,
              onPressed: () {
               /* Navigator.push(context, MaterialPageRoute(builder: (context) => MainScreen()),);*/
                // Navigator.push(context, MaterialPageRoute(builder: (context) => Skill()),);
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


