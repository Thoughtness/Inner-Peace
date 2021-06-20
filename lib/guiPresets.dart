import 'package:flutter/material.dart';
import 'package:inner_peace/symptomeErfassen.dart';
import 'package:inner_peace/main.dart';

class guiMahlzeitErfassen extends StatelessWidget {
  String titel = "";
  String zutaten = "";
  String symptome = "";
  double width = 10.0;
  double height = 20;

  guiMahlzeitErfassen(String titel, String zutaten, String symptome) {
    this.titel = titel;
    this.zutaten = zutaten;
    this.symptome = symptome;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(height: height),
          Row(
            children: <Widget>[
              SizedBox(width: width),
              Flexible(
                flex: 1,
                child: Container(
                  decoration: myBoxDecoration(),
                  height: 49,
                  child: Align(
                      alignment: Alignment.bottomRight,
                      child: insertTitle(text: titel)),
                ),
              ),
              SizedBox(width: width),
              Flexible(
                flex: 3,
                child: Container(
                  height: 49,
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(),
                        hintText: ' Gericht hier benennen'),
                  ),
                ),
              ),
              SizedBox(width: width),
            ],
          ),
          SizedBox(height: height),
          Row(
            children: <Widget>[
              SizedBox(width: width),
              Flexible(
                flex: 1,
                child: Container(
                    decoration: myBoxDecoration(),
                    height: 49,
                    child: insertTitle(text: zutaten)),
              ),
              SizedBox(width: width),
              Flexible(
                flex: 3,
                child: Container(
                  height: 49,
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(),
                        hintText: ' Zutaten mit Komma trennen'),
                  ),
                ),
              ),
              SizedBox(width: width),
            ],
          ),
          Flexible(
            child: Row(
              children: <Widget>[
                const SizedBox(width: 10),
                Flexible(
                  flex: 20,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      buttonBasic(
                        text: 'Symptome hinzufügen',
                        onClick: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              //toDo save inputs
                              builder: (context) => symptomeErfassen(),
                            ),
                          );
                        },
                      )
                    ],
                  ),
                ),
                SizedBox(width: width),
                Flexible(
                  flex: 20,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      buttonBasic(
                        text: 'Mahlzeit speichern',
                        onClick: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              //toDo change to Hauptmenü and save inputs
                              builder: (context) => symptomeErfassen(),
                            ),
                          );
                        },
                      )
                    ],
                  ),
                ),
                SizedBox(width: width),
              ],
            ),
          ),
          SizedBox(height: height),
        ],
      ),
    );
  }

  Widget insertTitle({
    required String text,
  }) {
    return ListTile(
      title: Text(text, textAlign: TextAlign.left),
    );
  }

  Widget buttonBasic({
    required VoidCallback onClick,
    required String text,
  }) {
    return ElevatedButton(
      onPressed: onClick,
      child: Text(text),
      style: TextButton.styleFrom(
        backgroundColor: Colors.cyanAccent,
        minimumSize: Size(200, 45),
        primary: Colors.black,
      ),
    );
  }
}

BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    color: Colors.grey,
    border: Border.all(width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(5.0) //
        ),
  );
}
