import 'package:flutter/material.dart';
import 'package:flutter_hack19/barcodeScanner.dart';
import 'package:flutter_hack19/eChallan.dart';
import 'package:flutter_hack19/verifyPolice.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: Text(
            "Home Page",
            style: TextStyle(
              color: Colors.black
            ),
          ),
          elevation: 1.0,
        ),
        drawer: Drawer(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                DrawerHeader(
                  child: Text("COMING SOON"),
                ),
                Card(
                  child: ListTile(
                      title: Text("Verify Police"),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => QRViewExample()));
                      }),
                ),
                Card(
                  child: ListTile(
                      title: Text("e-Challan"),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => eChallan()));
                      }),
                )
              ],
            ),
          ),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Text("Hello World"),
        ));
  }
}
