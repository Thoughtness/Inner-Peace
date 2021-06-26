import 'package:flutter/material.dart';
import 'package:inner_peace/main.dart';
import 'package:inner_peace/navigationMenu.dart';
import 'package:inner_peace/guiElements.dart';
import 'package:inner_peace/recordedSymptoms.dart';

class recordMeal extends StatelessWidget{

  String ingredients = "";
  String symptoms = "";
  double width = 10.0;
  double height = 20;

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.teal[100],
        endDrawer: menu(),
        appBar: AppBar(
          title: Text('Mahlzeit erfassen',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.cyanAccent,
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: height),
              customRow(
                title: 'Gericht',
                description: 'Gericht hier benennen',
              ),
              SizedBox(height: height),
              customRow(
                title: 'Zutaten',
                description: 'Zutaten mit Komma trennen',
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
                              //toDo save inputs
                              builder: (context) => MyApp(),
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
        ),
  );
}
