import 'package:flutter/material.dart';

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
      child: Column(children: <Widget>[
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
                    decoration: InputDecoration(
                        hintText: 'Gericht hier benennen'),
                  ),
                ),
              ),
            ],
          ),
        ),
        Row( //dient nur dazu einen Abstand zwischen die Rows zu kriegen
          children: <Widget>[
            Container(
              height: 10,
            ),
            ]
          ),
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
                        hintText: 'Zutaten hier eitippen und mit Komma trennen'),
                  ),
                ),
              ),
            ],
          ),
        ),
        Row( //dient nur dazu einen Abstand zwischen die Rows zu kriegen
            children: <Widget>[
              Container(
                height: 10,
              ),
            ]
        ),
        Flexible(
          child: Row(
            children: <Widget>[
              Flexible(
                flex: 5,
                child: Container(
                    width:
                    10000, //gross machen das die Breite genug gross ist damit flex greift
                    height: 49,
                    color: Colors.blueGrey,
                    child: insertTitle(text: symptome)),
              ),
              Flexible(
                flex: 12,
                child: Container(
                  height: 49,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Zum hinzufügen hier klicken'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
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
