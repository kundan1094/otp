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
      //selected: false,
      //enabled: false,
      //leading: selected?Icon(Icons.star,color: Colors.blue[900],):Icon(Icons.star_border,),
      //leading: selected?Icon(Icons.stop,size: 18,color: Colors.blue[900],):Icon(Icons.check_box_outline_blank,size: 13,),
      //leading: selected?Icon(Icons.turned_in,color: Colors.blue[900],):Icon(Icons.turned_in_not,),
      //leading: selected?Icon(Icons.remove_circle,color: Colors.blue[900],):Icon(Icons.remove_circle_outline,),
      //leading: selected?Icon(Icons.brightness_1,color: Colors.blue[900],):Icon(Icons.panorama_fish_eye,),
      //leading: selected?Icon(Icons.favorite,color: Colors.blue[900],):Icon(Icons.favorite_border,),
      //leading: selected?Icon(Icons.check_circle,color: Colors.blue[900],):Icon(Icons.check_circle_outline,),
      //leading: selected?Icon(Icons.label,color: Colors.blue[900],):Icon(Icons.label_outline,),
      //leading: selected?Icon(Icons.language,color: Colors.blue[900],):Icon(Icons.language,),
      //leading: selected?Icon(Icons.check_box,color: Colors.blue[900],):Icon(Icons.check_box_outline_blank,),
      title:Row(children: <Widget>[
        selected?Icon(Icons.stop,size: 18,color: Colors.blue[900],):Icon(Icons.check_box_outline_blank,size: 13,),
        SizedBox(width: 10,),
        Text(
          lang,
          style: selected?GoogleFonts.roboto(fontSize: 18,color: Colors.blue[900],fontWeight: FontWeight.bold,):GoogleFonts.roboto(fontSize: 16,),
        ),

      ],),
      trailing: selected?SvgPicture.asset("svgicon/Tickc.svg",color: Colors.green,width: 35,height: 35,):SizedBox(width: 1,),
      //trailing: selected?Icon(Icons.check,color: Colors.green,size: 45,):SizedBox(width: 1,),
      //trailing: selected?Icon(Icons.check,color: Colors.green,size: 40,):SizedBox(width: 1,),
      onTap: _handleTap,
    );
  }
}

class GridViewItem extends StatelessWidget {
  final MyIconImg iconData;
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
            child:Icon(Icons.check_circle,color: Colors.green[900],),
            top: 0.0,
            right: 0.0,
          ),
        ],),):
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
  MyTextFormFields({this.LText,this.Ktype});
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 60,
      padding: EdgeInsets.fromLTRB(0, 0, 0, 17),
      child: TextFormField(
        keyboardType: Ktype,

        style: TextStyle(
          height: 1.7,
        ),
        decoration:InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            labelText: LText,
            //suffixText: 'abc',
            //prefixText: '  ',
            prefix: Text(' '),
            labelStyle: GoogleFonts.roboto(
              fontSize: 16,
              height: 2,

              //letterSpacing: 1,
              textStyle: TextStyle(
              ),
            )
        ),
      ),);
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
          Expanded(flex:imagesize!=null ?imagesize:1,
            child: img,),
          SizedBox(height: 3,),
          Expanded(
            child:Column(children: <Widget>[
              heading!=null?Text(heading,style: TextStyle(color: Colors.deepPurple,fontSize: 15,fontWeight: FontWeight.bold),):SizedBox(width: 1,),
              Text(skill,style: TextStyle(color: Colors.blue[900],fontSize: 13,),textAlign: TextAlign.center,),
            ],),
          ),
        ],
      ),
    );
  }
}
class MyProfileStrip extends StatelessWidget {
  MyProfileStrip({this.Counter,this.heading });
  String Counter;
  String heading;
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
      margin: EdgeInsets.only(top: 40),
      //color: Colors.blue[100],
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(Counter,textAlign: TextAlign.start,
            style: GoogleFonts.montserrat(
              fontSize: 16,
              fontWeight: FontWeight.w500,

            ),
          ),
          Text('|'),
          Text(heading,
            textAlign: TextAlign.start,
            style: GoogleFonts.montserrat(
              fontSize: 16,
              fontWeight: FontWeight.w500,

            ),
          ),
          IconButton(
              icon: Icon(Icons.arrow_right,size: 30,)
          ),

        ],
      ),
    );
  }
}