import 'package:flutter/material.dart';

class eChallan extends StatefulWidget {
  @override
  _EState createState() => _EState();
}

class _EState extends State<eChallan> {
  int a=0,b=0,c=0,d=0,e=0;
  bool signal = false;
  bool driving = false;
  bool helmet = false;
  bool seatbelt = false;
  @override
  Widget build(BuildContext context) {

     
   
        return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              iconTheme: IconThemeData(color: Colors.black),
              backgroundColor: Colors.white,
              title: Text(
                "Challan",
                style: TextStyle(
                  color: Colors.black
                ),
              ),
              elevation: 1.0,
            ),
           
            body: Container(
              padding: EdgeInsets.all(30),
              alignment: Alignment.topCenter,
              child: Column(children: <Widget>[ 
                Container(
                child: TextField(
                
                decoration: InputDecoration(
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(25.0)
                  ),
                  hintText: "enter a name"
                ),
              )),
              Container(
                padding: EdgeInsets.only(top: 30.0),
               
                child:
                TextField(
                  
                  decoration: InputDecoration(
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0)
                    ),
                    hintText: "enter a mobile no."
                  ),
                ),),
                
                 // [signal] checkbox
              Row(
                
               
                children: <Widget>[
                  
                  Expanded(child: Text("Broke signal rule")),
                  Checkbox(
                    
                    value: signal,
                    onChanged: (bool value) {
                      setState(() {
                        if(b==0){
                        a=a+100;
                        b=1;
                        }
                        signal = value;
                      });
                    },
                  ),
                ],
              ),
              // [driving] checkbox
              Row(
                
                children: <Widget>[
                  
                  Expanded(child: Text("Dangerous driving")),
                  Checkbox(
                    value: driving,
                    onChanged: (bool value) {
                      setState(() {
                        if(c==0){
                        a=a+500;
                        c=1;
                        }
                        driving = value;
                      });
                    },
                  ),
                ],
              ),
              // [helmet] checkbox
              Row(
               
                children: <Widget>[
                  Expanded(child: Text("Not wearing helmet")),
                  Checkbox(
                    value: helmet,
                    onChanged: (bool value) {
                      setState(() {
                        if(d==0){
                          d=1;
                        a=a+200;
                        }
                        helmet = value;
                      });
                    },
                  ),
                ],
              ),
               // [seatbelt] checkbox
              Row(
                children: <Widget>[

                  Expanded(child: Text("Not wearing seatbelt")),
                  Checkbox(
                    value: seatbelt,
                    onChanged: (bool value) {
                      setState(() {
                        if(e==0)
                        {
                        a=a+300;
                        e=1;
                        }
                        seatbelt = value;
                      });
                    },
                  ),
                ],
              ),
              //checkboxes for documents.
              Row(
                children: <Widget>[
                  Expanded(child: Text("No License.")),
                  Checkbox(
                    value: seatbelt,
                    onChanged: (bool value) {
                      setState(() {
                        if(e==0)
                        {
                        a=a+500;
                        e=1;
                        }
                        seatbelt = value;
                      });
                    },
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(child: Text("No insurance")),
                  Checkbox(
                    value: seatbelt,
                    onChanged: (bool value) {
                      setState(() {
                        if(e==0)
                        {
                        a=a+300;
                        e=1;
                        }
                        seatbelt = value;
                      });
                    },
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(child: Text("No PUC")),
                  Checkbox(
                    value: seatbelt,
                    onChanged: (bool value) {
                      setState(() {
                        if(e==0)
                        {
                        a=a+300;
                        e=1;
                        }
                        seatbelt = value;
                      });
                    },
                  ),
                ],
              ),
                Container(
                padding: EdgeInsets.only(top: 30.0),
               
                child : Text("Total Amount= "+a.toString(),style: TextStyle(fontSize: 18.0)),
                
                
              
                ),
            SizedBox(height: 25.0,),
            FlatButton(child: Text("Data"),onPressed: (){},color: Colors.grey.withOpacity(0.4),)
            ],)
             
          
          ));
    }
}
