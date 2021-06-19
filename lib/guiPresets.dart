import 'package:flutter/material.dart';

class guiPresets extends StatelessWidget {
  String text = "";

  guiPresets(String text){
    this.text = text;
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
                      width: 10000, //gross machen das die Breite genug gross ist damit flex greift
                      height: 80,
                      color: Colors.red,
                      child: insertTitle(text: text)
                    ),
                  ),
                  Flexible(
                    flex: 6,
                    child: Container(
                      height: 80,
                      color: Colors.lightBlue,
                      child: TextField(
                        decoration: InputDecoration(hintText: 'Zum hinzufügen hier klicken'),
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
