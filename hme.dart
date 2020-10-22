import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:identityapp/first.dart';
import 'package:identityapp/second.dart';
import 'package:identityapp/third.dart';
import 'package:identityapp/forth.dart';
class hme extends StatelessWidget {

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child:Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          titleSpacing: 0,
          backgroundColor: Colors.lightBlueAccent,
          bottom:TabBar(
            isScrollable: true,
              indicatorColor: Colors.white,
              indicatorWeight: 3.0,
              unselectedLabelColor: Colors.black,



              tabs:[
                Tab(text: 'Local',),
                Tab(text: 'State',),
                Tab(text: 'Popular',),
                Tab(text: 'Most Views',),


              ]
          ),
          leading: Container(
            //width: 2,
              child: Row(children: <Widget>[
                Container(height: 47,width: 55,
                  child: CircleAvatar(
                    radius: 20.0,
                    backgroundImage: AssetImage('logos/one.jpg'),
                  ),
                  padding: EdgeInsets.fromLTRB(10,7,10,7),
                ),

              ],)
            //icon: Icon(Icons.arrow_back,size: 25,),

          ),

                title: Container(height: 42,width: 250,
              color: Colors.white,
              margin: EdgeInsets.fromLTRB(0, 5, 0, 5),

              child: TextField(

                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(0, 6, 0, 5),
                  hintText: 'Search ',

                  enabledBorder:  UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2.0,
                    ),
                  ),
                  focusedBorder:  UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2.0,
                    ),
                  ),

                  prefixIcon: Icon(Icons.search,size: 25,color: Colors.black87),
                ),
              ),
            ),
          actions: <Widget>[
            Container(height: 42,width: 55,
              child: Icon(Icons.category,

              ),
            ),
          ],


        ),



        body: TabBarView(
          children: <Widget>[
            first(),
            second(),
            third(),
            forth(),

          ],
        ),

      ),
    );
  }
}