import 'package:flutter/material.dart';
import 'package:inner_peace/symptomeErfassen.dart';
import 'package:inner_peace/main.dart';

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
          const SizedBox(height: 10),
          Flexible(
            child: Row(
              children: <Widget>[
                const SizedBox(width: 10),
                Flexible(
                  flex: 20,
                  child: Container(
                      decoration: myBoxDecoration(),
                      width:
                          10000, //gross machen das die Breite genug gross ist damit flex greift
                      height: 100,
                      child: insertTitle(text: titel)),
                ),
                const SizedBox(width: 10),
                Flexible(
                  flex: 60,
                  child: Container(
                    height: 49,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: ' Gericht hier benennen'),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Flexible(
            child: Row(
              children: <Widget>[
                const SizedBox(width: 10),
                Flexible(
                  flex: 2,
                  child: Container(
                      decoration: myBoxDecoration(),
                      width:
                          10000, //gross machen das die Breite genug gross ist damit flex greift
                      height: 49,
                      child: insertTitle(text: zutaten)),
                ),
                const SizedBox(width: 10),
                Flexible(
                  flex: 6,
                  child: Container(
                    height: 49,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: ' Zutaten mit Komma trennen'),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
              ],
            ),
          ),
          const SizedBox(width: 10),
          Flexible(
            child: Row(
              children: <Widget>[
                const SizedBox(width: 10),
                Flexible(
                  flex: 20,
                  child: Column(
                    children: <Widget>[
                      buttonBasic(
                        text: 'Mahlzeit speichern',
                        onClick: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            //toDo save inputs
                            builder: (context) => symptomeErfassen(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          Flexible(
            flex: 20,
            child: Column(
              children: <Widget>[
                buttonBasic(
                  text: 'Mahlzeit speichern',
                  onClick: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      //toDo change to Hauptmenü and save inputs
                      builder: (context) => symptomeErfassen(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
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

  Widget buttonBasic({
    required VoidCallback onClick,
    required text,
  }) {
    return ElevatedButton(
      onPressed: onClick,
      child: Text(text),
      style: TextButton.styleFrom(
        backgroundColor: Colors.cyanAccent,
        //minimumSize: Size(200, 45),
        primary: Colors.black,
      ),
    );
  }
}

BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    border: Border.all(width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(5.0) //
        ),
  );
}
