import 'package:flutter/material.dart';

import 'constants.dart';
import 'main.dart';
import 'test_veri.dart';

class BilgiTesti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.indigo[700],
            body: SafeArea(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: SoruSayfasi(),
            ))));
  }
}

class SoruSayfasi extends StatefulWidget {
  @override
  _SoruSayfasiState createState() => _SoruSayfasiState();
}

class _SoruSayfasiState extends State<SoruSayfasi> {
  TestVeri test_1 = TestVeri();
  List<Widget> secimler = [];
  int ds = 0;
  int ys = 0;
  void sifirla() {
    ds = 0;
    ys = 0;
  }

  void butonFonksiyonu(bool secilenButon) {
    setState(() {
      test_1.getSoruYaniti() == secilenButon
          ? {secimler.add(kDogruIconu), ds++}
          : {secimler.add(kYanlisIconu), ys++};
    });
    if (test_1.testBittiMi()) {
      var mesaj =
          "Yarişma sonucunuz: \nDoğru cevap sayınız: $ds\nYanlış cevap sayınız: $ys";
      setState(() {
        test_1.testiSifirla();
        secimler = [];
        sifirla();
      });
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Tebrikler testi bitirdiniz"),
            content: new Text(mesaj),
            actions: <Widget>[
              Container(
                child: new FlatButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyHomePage()));
                      setState(() {
                        ds = 0;
                        ys = 0;
                      });
                    },
                    child: Text(
                      "Ana sayfa",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    )),
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.indigo[800],
                  borderRadius: BorderRadiusDirectional.circular(8.0),
                ),
              ),
              SizedBox(
                height: 9,
              ),
              Container(
                child: new FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    setState(() {
                      ds = 0;
                      ys = 0;
                    });
                  },
                  child: Text(
                    "Yarışmaya yeniden başla",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.indigo[800],
                  borderRadius: BorderRadiusDirectional.circular(8.0),
                ),
              )
            ],
          );
        },
      );
    } else {
      setState(() {
        test_1.sonrakiSoru();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                test_1.getSoruMetni(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Wrap(
          alignment: WrapAlignment.end,
          runSpacing: 3,
          spacing: 3,
          children: secimler,
        ),
        Expanded(
          flex: 1,
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.0),
              child: Row(children: <Widget>[
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: RaisedButton(
                          padding: EdgeInsets.all(12),
                          textColor: Colors.white,
                          color: Colors.red[400],
                          child: Icon(
                            Icons.thumb_down,
                            size: 30.0,
                          ),
                          onPressed: () {
                            butonFonksiyonu(false);
                          },
                        ))),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: RaisedButton(
                          padding: EdgeInsets.all(12),
                          textColor: Colors.white,
                          color: Colors.green[400],
                          child: Icon(Icons.thumb_up, size: 30.0),
                          onPressed: () {
                            butonFonksiyonu(true);
                          },
                        ))),
              ])),
        )
      ],
    );
  }
}
