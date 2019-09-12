import 'package:flutter/material.dart';
import 'package:flutter_hack19/barcodeScanner.dart';
class VerifyPolice extends StatefulWidget {
  @override
  _VerifyPoliceState createState() => _VerifyPoliceState();
}

class _VerifyPoliceState extends State<VerifyPolice> {
  String barcodeValue="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text('Verify Policeman',style: TextStyle(color: Colors.black),),
      ),
      floatingActionButton:FloatingActionButton(
        child: Icon(Icons.camera),
        onPressed: ()async{
          var route = MaterialPageRoute(builder: (context) => QRViewExample());
          final _barcode = await Navigator.push(context, route);
          print(_barcode);
          setState(() {
            barcodeValue = _barcode;
          });
        },
      ),
    );
  }
}
