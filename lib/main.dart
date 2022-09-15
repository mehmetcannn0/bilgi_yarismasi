import 'package:bilgi/yarisma.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    color: Colors.indigo[700],
    title: "Bilgi yarışması",
    debugShowCheckedModeBanner: false,
    home: MyHomePage(),
  ));
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[600],
      appBar: AppBar(
        backgroundColor: Colors.indigo[400],
        title: Text("Bilgi yarışması"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.red[400],
                borderRadius: BorderRadiusDirectional.circular(8.0),
              ),
              child: Icon(
                Icons.thumb_down,
                size: 30.0,
                color: Colors.white,
              ),
            ),
            FlatButton(
              textColor: Colors.white,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BilgiTesti()));
              },
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Center(
                    child: Text(
                      "Yarışmaya başla",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.indigo[800],
                  borderRadius: BorderRadiusDirectional.circular(8.0),
                ),
              ),
            ),
            Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.green[400],
                  borderRadius: BorderRadiusDirectional.circular(8.0),
                ),
                child: Icon(
                  Icons.thumb_up,
                  size: 30.0,
                  color: Colors.white,
                )),
          ],
        ),
      ),
    );
  }
}
