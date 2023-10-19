import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lead_tracker/Auth/dummy2.dart';
import 'dashboardmenulist/cretaeLeadForm.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lead Tracker"),
        titleSpacing: 10.0,
        centerTitle: true,
        toolbarHeight: 35,
        toolbarOpacity: 0.8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(45),
              bottomLeft: Radius.circular(45)),
        ),
        elevation: 0.00,
        backgroundColor: Colors.green[900],
      ), //AppBa
      body:Container(
        child: SingleChildScrollView(
        child: Column(
          children: [
            Container(

              height: 80,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>createLead()));
                },
                child: Card(
                  color: Colors.grey[300],
                  elevation: 5,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),

                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          title: const Text('Create lead',style: TextStyle(fontWeight:FontWeight.normal,fontSize: 18,color: Colors.black),),
                          leading: CircleAvatar(backgroundColor: Colors.transparent,
                            child: SizedBox(
                              width: 60,
                              height: 60,
                              child: ClipOval(child: Image.asset("assets/images/pen.png",),),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 80,
              child: Card(
                color: Colors.grey[300],
                elevation: 5,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),

                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>dum()));
                        },
                        child: ListTile(
                          title: const Text('Assign Data',style: TextStyle(fontWeight:FontWeight.normal,fontSize: 18,color: Colors.black,),),
                          leading: CircleAvatar(backgroundColor: Colors.transparent,
                            child: SizedBox(
                              width: 60,
                              height: 60,
                              child: ClipOval(child: Image.asset("assets/images/data.png"),),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 80,
              child: Card(
                color: Colors.grey[300],
                elevation: 5,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),

                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                        title: const Text('Lead clashed report',style: TextStyle(fontWeight:FontWeight.normal,fontSize: 18,color: Colors.black),),
                        leading: CircleAvatar(backgroundColor: Colors.transparent,
                          child: SizedBox(
                            width: 50,
                            height: 50,
                            child: ClipOval(child: Image.asset("assets/images/report.png",alignment: Alignment.center,),),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 80,
              child: Card(
                color: Colors.grey[300],
                elevation: 5,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),

                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                        title: const Text('Lead remark list',style: TextStyle(fontWeight:FontWeight.normal,fontSize: 18,color: Colors.black),),
                        leading: CircleAvatar(backgroundColor: Colors.transparent,
                          child: SizedBox(
                            width: 60,
                            height: 60,
                            child: ClipOval(child: Image.asset("assets/images/remark.jpg",),),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 80,
              child: Card(
                color: Colors.grey[300],
                elevation: 5,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),

                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                        title: const Text('Create a price proposal',style: TextStyle(fontWeight:FontWeight.normal,fontSize: 18,color:Colors.black),),
                        leading: CircleAvatar(backgroundColor: Colors.transparent,
                          child: SizedBox(
                            width: 60,
                            height: 60,
                            child: ClipOval(child: Image.asset("assets/images/proposalprice.png"),),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 80,
              child: Card(
                color: Colors.grey[300],
                elevation: 5,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),

                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                        title: const Text('Add notes',style: TextStyle(fontWeight:FontWeight.normal,fontSize: 18,color: Colors.black),),
                        leading: CircleAvatar(backgroundColor: Colors.transparent,
                          child: SizedBox(
                            width: 60,
                            height: 60,
                            child: ClipOval(child: Image.asset("assets/images/addnotess.png"),),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 80,
              child: Card(
                color: Colors.grey[300],
                elevation: 5,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),

                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                        title: const Text('Complaint & messages',style: TextStyle(fontWeight:FontWeight.normal,fontSize: 18,color: Colors.black),),
                        leading: CircleAvatar(backgroundColor: Colors.transparent,
                          child: SizedBox(
                            width: 60,
                            height: 60,
                            child: ClipOval(child: Image.asset("assets/images/complaint.png",fit: BoxFit.fill,),),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 80,
              child: Card(
                color: Colors.grey[300],
                elevation: 5,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),

                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                        title: const Text('Search lead',style: TextStyle(fontWeight:FontWeight.normal,fontSize: 18,color: Colors.black),),
                        leading: CircleAvatar(backgroundColor: Colors.transparent,
                          child: SizedBox(
                            width: 60,
                            height: 60,
                            child: ClipOval(child: Image.asset("assets/images/searchlead.png",),),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 80,
              child: Card(
                color: Colors.grey[300],
                elevation: 5,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),

                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                        title: const Text('Follow up',style: TextStyle(fontWeight:FontWeight.normal,fontSize: 18,color: Colors.black),),
                        leading: CircleAvatar(backgroundColor: Colors.transparent,
                          child: SizedBox(
                            width: 60,
                            height: 60,
                            child: ClipOval(child: Image.asset("assets/images/followup.png",),),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),


          ],
        ),
        ),
      ),

    );
  }
}

