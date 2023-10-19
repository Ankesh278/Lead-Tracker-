import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lead_tracker/Auth/SignInPage.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import '../designs/customappbardesign.dart';
import 'package:firebase_in_app_messaging/firebase_in_app_messaging.dart';
import 'package:fluttercontactpicker/fluttercontactpicker.dart';


class createLead extends StatefulWidget {
  createLead({Key? key}) : super(key: key);




  @override
  State<createLead> createState() => _createLeadState();

}
class _createLeadState extends State<createLead> {




  void initState(){

    _focusNode.addListener(() {
      if (!_focusNode.hasFocus) {
        FocusScope.of(context).requestFocus(_focusNode);
      }
    });

    super.initState();
  }







  late int selectedValue;

  FocusNode _focusNode = FocusNode();
  String _dropDownValue='Choose your option';

  List<String > listitems = ["United States of America", "Canada", "United Kingdom", "China", "Russia", "Austria"];
  String selectval = "United States of America";


  final Map<String, int> discBasis = {
    'Age': 1,
    'name': 2,
    'Color': 3,
    'Disability': 4,
    'Race': 5,
    'Religion': 6,
    'Gender': 7,
    'Familial Status': 8,
    'National Origin': 9
  };
   List dropDownListData = [
     {"title": "BCA", "value": "1"},
     {"title": "MCA", "value": "2"},
     {"title": "B.Tech", "value": "3"},
     {"title": "M.Tech", "value": "4"},
   ];
   String defaultValue = "";
  String select="";



  @override
  Widget build(BuildContext context) {
    var demo;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(

        automaticallyImplyLeading: false,
        toolbarHeight: 50,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leadingWidth: 60,
        leading: Container(
            margin: EdgeInsets.fromLTRB(10, 20, 0, 0),
            child: BackButton(color: Colors.black,)),
        flexibleSpace: ClipPath(

          clipper: AppbarCustomClipper(),
          child: Container(
            height: 130,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors:[
                      Color(0xFF1B5E20),
                      Color(0xFF1B5E20)
                    ]
                )
            ),
            child: Center(child: Text("Create Lead",style: TextStyle(color: Colors.white,fontSize: 20,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),)),

          ),
        ),
      ),
      body:Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset("assets/images/splash.png",height: 110,),


              Container(

                  height: 40,
                  margin: EdgeInsets.only(left: 30,right: 30,top: 5),
                  child: TextField(style:TextStyle(fontSize: 18),keyboardType:TextInputType.text,decoration: InputDecoration(focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xFF1B5E20))),border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),label:Text("Customer name",style: TextStyle(color: Colors.black,fontSize: 12),),hintText: 'Customer name',prefixIcon: Icon(Icons.person_2_rounded ,color: Colors.green[900],size: 25,)))),//customer name

              Container(
                  height: 40,
                  margin: EdgeInsets.fromLTRB(30, 5, 30, 0),
                  child: TextField(keyboardType:TextInputType.text,decoration: InputDecoration(focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xFF1B5E20))),border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),label:Text("Company",style: TextStyle(color: Colors.black,fontSize: 12)),hintText: 'Company',prefixIcon: Icon(Icons.temple_hindu_rounded,color: Colors.green[900],size: 20,),),)),//Company
//phone number TextField
              Container(
                  height: 40,
                  margin: EdgeInsets.fromLTRB(30, 10, 30, 0),
                  child: TextField(focusNode:_focusNode,autofocus:true,inputFormatters:[LengthLimitingTextInputFormatter(10)],keyboardType:TextInputType.number,decoration: InputDecoration(focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xFF1B5E20))),border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),label:Text("Enter mobile",style: TextStyle(color: Colors.black,fontSize: 12)),hintText: 'Enter mobile no',prefixIcon: IconButton(onPressed: ()async{



                  },icon: Icon(Icons.swap_calls_rounded),),),)),//Mobile no

              Container(
                  height: 40,
                  margin: EdgeInsets.fromLTRB(30, 10, 30, 0),
                  child: TextField(keyboardType:TextInputType.emailAddress,decoration: InputDecoration(focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xFF1B5E20))),border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),label:Text("Email",style: TextStyle(color: Colors.black,fontSize: 12)),hintText: 'Email',prefixIcon: Icon(Icons.email_rounded,color: Colors.green[900],size: 20,),),)),//Email

              Container(
                  height: 40,
                  margin: EdgeInsets.fromLTRB(30, 10, 30, 0),
                  child: TextField(keyboardType:TextInputType.streetAddress,decoration: InputDecoration(focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xFF1B5E20))),border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),label:Text("Address",style: TextStyle(color: Colors.black,fontSize: 12)),hintText: 'Enter address',prefixIcon: Icon(Icons.house_rounded,color: Colors.green[900],size: 20,),),)),//address

              Container(
                  height: 40,
                  margin: EdgeInsets.fromLTRB(30, 10, 30, 0),
                  child: TextField(keyboardType:TextInputType.streetAddress,decoration: InputDecoration(focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xFF1B5E20))),border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),label:Text("Event",style: TextStyle(color: Colors.black,fontSize: 12)),hintText: 'Add Event',prefixIcon: Icon(Icons.event_available_rounded,color: Colors.green[900],size: 20,),),)),//Event
              Container(
                height: 53,
                width: 400,
                margin: EdgeInsets.fromLTRB(30, 10, 30, 0),
                child: DropdownButtonFormField(

                  decoration: InputDecoration(focusColor: Colors.green[900],focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xFF1B5E20))),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),
                  ),
                  borderRadius: BorderRadius.circular(15),
                  dropdownColor: Colors.white,

                  hint: Text(_dropDownValue,
                    style: TextStyle(color: Colors.black,fontSize: 12),
                  ),
                  isExpanded: true,

                  iconSize: 20.0,
                  iconEnabledColor: Colors.green[900],
                  style: TextStyle(color: Colors.black,fontSize: 14),
                  items: ['Select Items','One', 'Two', 'Three'].map(
                        (val) {
                      return DropdownMenuItem<String>(
                        value: (val),
                        child: Text(val,style: TextStyle(fontSize: 13),),
                      );
                    },
                  ).toList(),
                  onChanged: (val) {
                    setState(
                          () {
                        _dropDownValue = val!;
                      },
                    );
                  },
                ),
              ),//first spinner
              Text('selected value: $_dropDownValue'),

              Container(
                height: 50,
                width: 400,
                margin: EdgeInsets.fromLTRB(35, 10, 35, 0),
                child: DropdownButton(
                  hint: Text("Select your choice"),
                  isExpanded: true,
                  value: selectval,
                  onChanged: (value){
                    setState(() {
                      selectval = value.toString();
                    });
                  },
                  items: listitems.map((itemone){
                    return DropdownMenuItem(
                        value: itemone,
                        child: Text(itemone)
                    );
                  }).toList(),
                ),
              ), //second spinner



              //Drop down with values and id


              Container(
                height: 30,
                padding: EdgeInsets.symmetric(horizontal: 4),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 1
                  ),borderRadius: BorderRadius.circular(4)
                ),
                margin: EdgeInsets.fromLTRB(35, 10, 35, 0),
                child: new DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                      value: defaultValue,
                      isExpanded: true,
                      menuMaxHeight: 350,
                      items: [
                        const DropdownMenuItem(
                            child: Text(
                              "Select Course",style: TextStyle(fontSize: 12),
                            ),
                            value: ""),
                        ...dropDownListData.map<DropdownMenuItem<String>>((data) {
                          return DropdownMenuItem(
                              child: Text(data['title']),
                              value: data['value']);
                        }).toList(),
                      ],
                      onChanged: (value) {
                        print("selected Value $value");
                        setState(() {
                          defaultValue = value!;
                        });
                      }),
                ),
              ),




              Container(
                  height: 40,
                  margin: EdgeInsets.fromLTRB(30, 10, 30, 0),
                  child: TextField(keyboardType:TextInputType.number,inputFormatters: [LengthLimitingTextInputFormatter(6)],decoration: InputDecoration(focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xFF1B5E20))),border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),label:Text("PinCode",style: TextStyle(color: Colors.black,fontSize: 12)),hintText: 'Enter pinCode',prefixIcon: Icon(Icons.pin_end_rounded,color: Colors.green[900],size: 20,),),)),//Pin code

              Container(
                  height: 40,
                  margin: EdgeInsets.fromLTRB(30, 10, 30, 0),
                  child: TextField(keyboardType:TextInputType.streetAddress,decoration: InputDecoration(focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xFF1B5E20))),border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),label:Text("Remark",style: TextStyle(color: Colors.black,fontSize: 12)),hintText: 'Remark',prefixIcon: Icon(Icons.remember_me_rounded,color: Colors.green[900],size: 20,),),)),//remark
              //dummy drop down
              


              Container(
                width: 140,
                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: ElevatedButton(onPressed: (){},
                    child: Text("Create Lead"),
                    style: ElevatedButton.styleFrom(primary: Colors.green[900])
                ),
              ),//button
            ],
          ),
        ),
      ),

    );
  }
}

