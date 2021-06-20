import 'package:flutter/material.dart';
import 'package:inner_peace/symptomeErfassen.dart';

class mahlzeitErfassenBody extends StatelessWidget {

  String zutaten = "";
  String symptome = "";
  double width = 10.0;
  double height = 20;

  mahlzeitErfassenBody(String zutaten, String symptome) {
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
            customRow(
              title: 'Gericht',
              description: ' Gericht hier benennen'
            ),
          SizedBox(height: height),
          customRow(
            title: 'Zutaten',
              description: ' Zutaten mit Komma trennen'
          ),
          Flexible(
            child: Row(
              children: <Widget>[
                const SizedBox(width: 10),
                Flexible(
                  flex: 20,
                  child: customButton(
                    text: 'Symptome hinzufügen',
                    onClick: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          //toDo save inputs
                          builder: (context) => symptomeErfassen(),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(width: width),
                Flexible(
                  flex: 20,
                  child: customButton(
                    text: 'Mahlzeit speichern',
                    onClick: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          //toDo save inputs und ändern zu hauptmenü
                          builder: (context) => symptomeErfassen(),
                        ),
                      );
                    },
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

  Widget customRow({
    required String description,
    required String title,
  }) {
    return Row(
      children: <Widget>[
        SizedBox(width: width),
        Flexible(
          flex: 1,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(width: 1.0),
              borderRadius: BorderRadius.all(Radius.circular(5.0) //
              ),
            ),
            //height: 49,
            child: Align(
                alignment: Alignment.bottomRight,
                child: ListTile(
                  title: Text(title, textAlign: TextAlign.left),
                ),
            ),
          ),
        ),
        SizedBox(width: width),
        Flexible(
          flex: 3,
          child: Container(
            height: 58,
            child: TextField(
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(),
                  hintText: description),
            ),
          ),
        ),
        SizedBox(width: width),
      ],
    );
  }

  Widget customButton({
    required VoidCallback onClick,
    required String text,
}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        ElevatedButton(
          onPressed: onClick,
          child: Text(text),
          style: TextButton.styleFrom(
            backgroundColor: Colors.cyanAccent,
            minimumSize: Size(200, 45),
            primary: Colors.black,
          ),
        )
      ],
    );
  }
}