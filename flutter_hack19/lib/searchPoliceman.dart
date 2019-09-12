import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class SearchPoliceMan extends StatefulWidget {
  final String value;

  const SearchPoliceMan({Key key, this.value}) : super(key: key);

  @override
  _SearchPoliceManState createState() => _SearchPoliceManState();
}

class _SearchPoliceManState extends State<SearchPoliceMan> {
  String check;

  @override
  Widget build(BuildContext context) {
    searchDB();
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: check==null ? CircularProgressIndicator():Text(check),
      ),
    );
  }

  void searchDB()async{
    var document = await Firestore.instance.collection('policeofficers').document(widget.value).get();
    if (document == null || !document.exists) {
      setState(() {
        check = "NOT FOUND";
      });
    } else {
      setState(() {
        check = 'FOUND';
      });
    }
  }
}
