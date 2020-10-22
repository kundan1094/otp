import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyAppBar extends StatelessWidget {
  final Widget RowData;
  MyAppBar({this.RowData});
  @override
  Widget build(BuildContext context) {
    return Container( //color: Colors.greenAccent,
      margin: EdgeInsets.fromLTRB(3,3,3,3),
      height: 40,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.indigo,
        borderRadius:  BorderRadius.circular(5),
      ),
//color: Colors.indigo,
      child: RowData,
    );
  }
}
class AppBarMeraKam extends StatelessWidget {
  final String Heading;
  final appicon;
  final headingAlignment;
  AppBarMeraKam({this.Heading,this.appicon,this.headingAlignment});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 0,
      backgroundColor: Colors.blue[900],
      leading: Container(
        //width: 2,
          child: Row(children: <Widget>[
            IconButton(
              icon: appicon==null?Icon(Icons.arrow_back,size: 25,):appicon,
              onPressed: () {
                Navigator.pop(context);},
            ),

          ],)
        //icon: Icon(Icons.arrow_back,size: 25,),

      ),
      title: Align(alignment: headingAlignment==null?Alignment.center:Alignment.centerLeft,
        child:Text(Heading,
          textAlign: TextAlign.left,
          style:GoogleFonts.montserrat(fontSize: 20,fontWeight: FontWeight.normal,color: Colors.white),
        ),
      ),
      actions: <Widget>[
        Container(//height: 10,width: 80,
          child: Image.asset('logos/kaam.png'),
          padding: EdgeInsets.fromLTRB(10,7,10,7),
        ),
      ],
    );
  }
}
class BottamAppBarMeraKam extends StatelessWidget {
  BottamAppBarMeraKam({this.link,this.argumentPass});
  //BottamAppBarMeraKam({this.link});
  final String link;
  final argumentPass;
  //final appicon;
  //final headingAlignment;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.blue[900],
      child:
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.arrow_forward,color: Colors.white,size: 25,),
            alignment: Alignment.center,
            onPressed: () {
              Navigator.pushNamed(context, link,
                arguments: argumentPass==null?null:argumentPass,
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.live_help,color: Colors.white,size: 25,),
            alignment: Alignment.center,
            onPressed: null,
          )
        ],
      ),
    );
  }
}
class MyListTile extends StatelessWidget {

  MyListTile({this.lang,this.selected,@required this.onChanged});
  final String lang;
  final bool selected;
  final ValueChanged<bool> onChanged;

  void _handleTap() {
    onChanged(!selected);
  }
  @override
  Widget build(BuildContext context) {
    return ListTile(dense: true,
      contentPadding: selected?EdgeInsets.fromLTRB(40, 0, 40, 0):EdgeInsets.fromLTRB(42, 0, 40, 0),
      title:Row(children: <Widget>[
        selected?Icon(Icons.stop,size: 18,color: Colors.blue[900],):Icon(Icons.check_box_outline_blank,size: 13,),
        SizedBox(width: 10,),
        Text(
          lang,
          style: selected?GoogleFonts.roboto(fontSize: 18,color: Colors.blue[900],fontWeight: FontWeight.bold,):GoogleFonts.roboto(fontSize: 16,),
        ),

      ],),
      trailing: selected?SvgPicture.asset("svgicon/Tickc.svg",color: Colors.green,width: 35,height: 35,):SizedBox(width: 1,),
      onTap: _handleTap,
    );
  }
}
class ListTileRadio extends StatelessWidget {
  ListTileRadio({ this.heading,this.selected=false,@required this.onChanged,this.selectedIcon,this.unselectedIcon});
  final String heading;
  final bool selected;
  final selectedIcon;
  final unselectedIcon;
  final ValueChanged<bool> onChanged;
  void _handleTap() {
    onChanged(!selected);
  }
  @override
  Widget build(BuildContext context) {
    return ListTile(dense: true,
      contentPadding:EdgeInsets.fromLTRB(0, 0, 0, 0) ,
      leading:
      Text(
        heading==null?'null':heading,
        style: selected?GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.bold,):GoogleFonts.roboto(fontSize: 16,),
        textAlign: TextAlign.start,
      ),
      //trailing: selected?Icon(Icons.radio_button_checked,color: Colors.blue[900],):Icon(Icons.radio_button_unchecked),
      trailing: selected?(selectedIcon==null?Icon(Icons.radio_button_checked,color: Colors.blue[900],):Icon(selectedIcon,color: Colors.blue[900],)):(unselectedIcon==null?Icon(Icons.radio_button_unchecked):Icon(unselectedIcon)),
      onTap: _handleTap,
    );
    /*return ListView.builder(
      itemCount: strength.length,
      itemBuilder: (context, index) {
        return Card( //                           <-- Card widget
          child: ListTile(
            dense: true,
            //contentPadding: selected?EdgeInsets.fromLTRB(40, 0, 40, 0):EdgeInsets.fromLTRB(42, 0, 40, 0),
           // leading: Icon(icons[index]),
            title: Text(strength[index]),
            //selected: selected,
            trailing: selected?Icon(Icons.radio_button_checked):Icon(Icons.radio_button_unchecked),
            onTap: _handleTap,
          ),
        );

      },
    );*/
  }
}
class GridViewItem extends StatelessWidget {
  final iconData;
  final bool isSelected;
  final double top;
  GridViewItem({this.iconData, this.isSelected,this.top});
  @override
  Widget build(BuildContext context) {
    return isSelected?
    Container(
      margin: EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.green,
            blurRadius: 2.0,
            spreadRadius: 0.0,
            offset: Offset(2.0, 2.0), // shadow direction: bottom right
          )
        ],
      ),
      child: Stack(
        fit: StackFit.expand,
        alignment: Alignment.topCenter,
        children: <Widget>[
          RawMaterialButton(
            child:iconData,
            padding: EdgeInsets.fromLTRB(0, top, 0, 0),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0),
                side: BorderSide(width: 1, color: Colors.black38)),
            fillColor: Colors.green[50],
            onPressed: null,
          ),

          Positioned(
            child:Container(
              decoration: BoxDecoration(
                //border: Border.all(width: 0, color: Colors.black38),
                borderRadius:  BorderRadius.circular(25),
                color: Colors.white,
              ),

              child: Icon(Icons.check_circle,color: Colors.green[900],),),
            top: 1,
            right: 1,
          ),
        ],
      ),
    ):
    Container(
        margin: EdgeInsets.all(1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              blurRadius: 2.0,
              spreadRadius: 0.0,
              offset: Offset(2.0, 2.0), // shadow direction: bottom right
            )
          ],
        ),
        child:RawMaterialButton( child:iconData,
          padding: EdgeInsets.fromLTRB(0, top, 0, 0),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
              side: BorderSide(width: 1, color: Colors.black38)),
          fillColor:  Colors.white,
          onPressed: null,)

    );
  }
}
class MyTextFormFields extends StatelessWidget {
  final String LText;
  final TextInputType Ktype;
  final ValueChanged<String> onChanged;
  MyTextFormFields({this.LText,this.Ktype,this.onChanged});
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 60,
      padding: EdgeInsets.fromLTRB(0, 0, 0, 17),
      child: TextFormField(
        keyboardType: Ktype,
        onChanged: (String NewValue){
          onChanged(NewValue);
          //currentSelectdValue=NewValue;
          //state.didChange(NewValue);
        },
        style: TextStyle(
          height: 1.7,
        ),
        decoration:InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            labelText: LText,
            prefix: Text(' '),
            labelStyle: GoogleFonts.roboto(
              fontSize: 16,
              height: 2,

              //letterSpacing: 1,
              textStyle: TextStyle(
              ),
            )
        ),
      ),
    );
  }
}
class MyFormContainer extends StatelessWidget {
  final Widget data;
  MyFormContainer({ this.data});
  @override
  Widget build(BuildContext context) {
    return Container(//color: Colors.greenAccent,
      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: Stack(alignment: const Alignment(0,0.9),
        children: <Widget>[
          data,

          Divider(thickness: 1,color: Colors.black45,),
        ],
      ),
    );
  }
}
class MyDropDownList extends StatelessWidget {
  MyDropDownList({this.LText,this.onChanged,this.currentSelectdValue,this.list});

  final String LText;
  final ValueChanged<String> onChanged;
  String currentSelectdValue;
  var list=new List();
  @override
  Widget build(BuildContext context) {
    return Container(
      //color:Colors.deepOrange,
      //height: 0,

      padding: EdgeInsets.fromLTRB(0, 0, 0, 17),
      child: FormField<String>(

        builder: (FormFieldState<String> state) {

          return InputDecorator(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(3, 5, 0, 0),
              labelText: LText,
              labelStyle: GoogleFonts.roboto(
                fontSize: 16,
              ),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: currentSelectdValue,
                isDense: true,
                onChanged: (String NewValue){
                  onChanged(NewValue);
                  currentSelectdValue=NewValue;
                  state.didChange(NewValue);
                },
                items: list.map((var value) {
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
    );
  }


}
class MySelectBar extends StatelessWidget {
  MySelectBar({this.heading,this.skill});
  final String heading;
  final String skill;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment(1,-1),
      children: <Widget>[

        Container(
          margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
          alignment: Alignment.center,
          padding: EdgeInsets.fromLTRB(0,20,0,20),
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.green),
            borderRadius:  BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.green,
                blurRadius: 2.0,
                spreadRadius: 0.0,
                offset: Offset(2.0, 2.0), // shadow direction: bottom right
              )
            ],
          ),
          //padding: EdgeInsets.all(10),
          child:
          Container(
            child: Column(
              children: <Widget>[
                //Text(heading,style: TextStyle(color: Colors.deepPurple,fontSize: 15,fontWeight: FontWeight.bold),),
                Text(skill,style: TextStyle(color: Colors.blue[900],fontSize: 13,)),
              ],
            ),
          ),

        ),
        Icon(Icons.cancel,color: Colors.red,),
      ],

    );
  }
}
class MyIconImg extends StatelessWidget {
  MyIconImg({this.heading,this.skill,this.img,this.imagesize});
  final String heading;
  final String skill;
  final Image img;
  final int imagesize;
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children: <Widget>[

          Expanded(flex:imagesize!=null ?imagesize:1,child: img,),
          //Expanded(child: SizedBox(height: 3,),),
          Expanded(
            flex: 1,
            child:Column(children: <Widget>[
              SizedBox(height: 10,),
              heading!=null?Text(heading, style: GoogleFonts.montserrat(fontSize: 14,color: Colors.black,fontWeight: FontWeight.bold,),):SizedBox(width: 1,),
              Text(skill,style: GoogleFonts.roboto(fontSize: 11,color: Colors.blue[900],),textAlign: TextAlign.center,),
            ],),
          ),
        ],
      ),
    );
  }
}
class MyProfileStrip extends StatelessWidget {
  MyProfileStrip({this.Counter,this.heading,this.stripIcon,this.link });
  String Counter;
  String heading;
  final stripIcon;
  String link;

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.all(1),
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.blue[900]),

        borderRadius: BorderRadius.circular(8.0),
        color: Colors.blue[50],
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 2.0,
            spreadRadius: 0.0,
            offset: Offset(2.0, 2.0), // shadow direction: bottom right
          )
        ],
      ),
      margin: EdgeInsets.only(top: 30),
      //color: Colors.blue[100],
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          //SizedBox(width: 5,),
          Text("     "+Counter+heading,textAlign: TextAlign.start,
            style: GoogleFonts.montserrat(
              fontSize: 16,
              fontWeight: FontWeight.w500,

            ),
          ),

          IconButton(
            icon: Icon(stripIcon==null?Icons.arrow_right:stripIcon,size: 30,),
            onPressed:(){
              Navigator.pushNamed(context, link);
              /*if(heading=="Skill Or Service Details")
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Skill(fromLink: 2,)),);
                if(heading=="Service Details")
                  Navigator.pushNamed(context, '/bsServiceDetails');
                if(heading.contains("Identity Details"))
                  Navigator.pushNamed(context, '/identity');
                if(heading.contains("Identity Details"))
                  Navigator.pushNamed(context, '/bsIdentityDetails');
                if(heading.contains("Personal Details"))
                  Navigator.pushNamed(context, '/personal');
*/
            } ,

          ),

        ],
      ),
    );
  }
}
class WorkList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      //padding: EdgeInsets.only(left: 5,top: 5,right: 5,bottom: 5),
      child:Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('logos/photoM.jpg'),
                  radius: 35,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(top: 2),
                            //height: 21,
                            child: Text('Amit Aggarwal',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.roboto(fontSize: 14,
                                fontWeight:FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(height: 2,),
                          Text('Aggrwal Cottage, Lower Totu Shimla, 171011',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 11,color: Colors.black54),
                            //style: GoogleFonts.roboto(fontSize: 12),
                          ),
                          SizedBox(height: 3,),
                          Text('9418027023 9816649525',
                            textAlign: TextAlign.start,
                            style: GoogleFonts.roboto(
                              fontSize: 14,
                              color: Colors.blue[900],
                              //fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 40,
                            child: IconButton(
                              alignment: Alignment.topCenter,
                              icon: Icon(Icons.location_on,size: 35,color: Colors.red[900],),
                            ),),
                          //SizedBox(height: 5,),
                          Text('  On Map',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                              fontSize: 6,
                              //fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 0,),
                Container(height: 25,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Text('No Remarks',
                          style: GoogleFonts.roboto(
                            fontSize: 10,
                            //fontWeight: FontWeight.bold,
                            color: Colors.deepOrange,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      //Expanded(child:SizedBox(width: 1,),),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,

                          children: <Widget>[
                            Text('12-Feb-20',
                              style: GoogleFonts.roboto(
                                fontSize: 10,
                                //fontWeight: FontWeight.bold,
                                color: Colors.black54,
                              ),
                            ),
                            IconButton(
                              alignment: Alignment.centerRight,
                              icon: Icon(Icons.done_all,size: 18,color: Colors.deepOrange,),
                              onPressed: (){Navigator.pushNamed(context, '/customer-profile');},
                            ),
                          ],
                        ),
                        //SizedBox(height: 5,),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
class DividerHeading extends StatelessWidget {
  final String heading;
  final dividercolor;
  DividerHeading({this.heading,this.dividercolor});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Divider(
              thickness: 1,
              color: dividercolor,
              height: 1,
            ),
          ),
          Text(heading,
            //'   Customer & Buyer  ',
            style: GoogleFonts.montserrat(
              fontSize: 12,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child:Divider(
              thickness: 1,
              color: dividercolor,
              height: 1,
            ),
          ),
        ],
      ),
    );
  }
}
class SkillFlatButton extends StatelessWidget {
  final String heading;
  SkillFlatButton({this.heading});
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: (){
      },
      shape:BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(2.0),
        side: BorderSide(
          color: Colors.black38,
          width: 0.5,
        ),
      ),
      padding: EdgeInsets.only(left:10,top: 0,right: 10,bottom: 0),
      disabledColor: Colors.blue,
      color: Colors.white,
      child: Text(heading,
        style: GoogleFonts.montserrat(
            color: Colors.blue[900],
            fontSize: 16
        ),
      ),
      //icon: ,
    );
  }
}