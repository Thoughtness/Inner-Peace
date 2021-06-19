import 'package:flutter/material.dart';
import 'package:inner_peace/symptomeErfassen.dart';

class guiMahlzeitErfassen extends StatelessWidget {
  String titel = "";
  String zutaten = "";
  String symptome = "";

  guiMahlzeitErfassen(String titel, String zutaten, String symptome) {
    this.titel = titel;
    this.zutaten = zutaten;
    this.symptome = symptome;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Flexible(
            child: Row(
              children: <Widget>[
                Flexible(
                  flex: 2,
                  child: Container(
                      width:
                          10000, //gross machen das die Breite genug gross ist damit flex greift
                      height: 49,
                      color: Colors.blueGrey,
                      child: insertTitle(text: titel)),
                ),
                Flexible(
                  flex: 6,
                  child: Container(
                    height: 49,
                    child: TextField(
                      decoration:
                          InputDecoration(hintText: 'Gericht hier benennen'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(//dient nur dazu einen Abstand zwischen die Rows zu kriegen
              children: <Widget>[
            Container(
              height: 10,
            ),
          ]),
          Flexible(
            child: Row(
              children: <Widget>[
                Flexible(
                  flex: 2,
                  child: Container(
                      width:
                          10000, //gross machen das die Breite genug gross ist damit flex greift
                      height: 49,
                      color: Colors.blueGrey,
                      child: insertTitle(text: zutaten)),
                ),
                Flexible(
                  flex: 6,
                  child: Container(
                    height: 49,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText:
                              'Zutaten hier eitippen und mit Komma trennen'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(//dient nur dazu einen Abstand zwischen die Rows zu kriegen
              children: <Widget>[
            Container(
              height: 10,
            ),
          ]),
          Flexible(
              child: Column(
                children: <Widget>[
                ElevatedButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.cyanAccent,
                      minimumSize: Size(250, 45),
                      primary: Colors.black,
                      onSurface: Colors.red,
                    ),
                  child: Text('Symptome hinzufügen'),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => symptomeErfassen(),
                    ));
                  })
            ],
          ))
        ],
      ),
    );
  }

  Widget insertTitle({
    required String text,
  }) {
    return ListTile(
      title: Text(text),
    );
  }
}
