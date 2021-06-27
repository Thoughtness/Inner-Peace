import 'package:flutter/material.dart';
import 'package:inner_peace/main.dart';
import 'package:inner_peace/mealData.dart';
import 'package:inner_peace/Pages/navigationMenu.dart';
import 'package:inner_peace/guiElements.dart';
import 'package:inner_peace/Pages/recordSymptoms.dart';
import 'package:inner_peace/databasing.dart';

// ignore: camel_case_types
class recordMeal extends StatelessWidget {
  //insertMeal insertMeal = new insertMeal();
  //mealData meal = new mealData(id: 0, gericht: "", zutaten: );
  final mealName = TextEditingController();
  final ingredientss = TextEditingController();
  List<mealData> taskList = [];
  String symptoms = "";
  final double width = 10.0;
  final double height = 20;

  late String meal;
  late List<String> ingredients;
  late double symptomTotal;
  late double generalWellbeing;
  late double cramps;
  late double flatulence;
  late double bowel;

  // @override
  // void initState() {
  //   super.initState();
  //
  //   isImportant = widget.note?.isImportant ?? false;
  //   number = widget.note?.number ?? 0;
  //   title = widget.note?.title ?? '';
  //   description = widget.note?.description ?? '';
  // }

  final formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.teal[100],
        endDrawer: menu(),
        appBar: AppBar(
          title: Text(
            'Mahlzeit erfassen',
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
                textController: mealName,
              ),
              SizedBox(height: height),
              customRow(
                title: 'Zutaten',
                description: 'Zutaten mit Komma trennen',
                textController: ingredients,
              ),
              Flexible(
                child: Row(
                  children: <Widget>[
                    const SizedBox(width: 10),
                    Flexible(
                      flex: 20,
                      child: customButton(
                        text: 'Symptome hinzufügen',
                        onClick: (){
                          addNote();
                          //_submit;
                          //id ++;
                          // var ingredientsArray = ingredientss.toString().split(',');
                          // var meal = mealData(
                          //     meal: mealName.toString(),
                          //     ingredients: ingredientsArray,
                          //     symptomTotal: 0,
                          //     generalWellbeing: 0,
                          //     cramps: 0,
                          //     flatulence: 0,
                          //     bowel: 0,
                          // );
                          // await NotesDatabase.instance.create(meal);
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              //toDo save inputs
                              builder: (context) => recordSymptoms(),
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
                        onClick: (){
                          addNote();
                          // var ingredientsArray = ingredientss.toString().split(',');
                          // var meal = mealData(
                          //     meal: mealName.toString(),
                          //     ingredients: ingredientsArray,
                          //     symptomTotal: 0,
                          //     generalWellbeing: 0,
                          //     cramps: 0,
                          //     flatulence: 0,
                          //     bowel: 0,
                          // );
                          // await NotesDatabase.instance.create(meal);
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

  Future addNote() async {
    final note = mealData(
      meal: meal,
      ingredients: ingredients,
      symptomTotal: symptomTotal,
      generalWellbeing: generalWellbeing,
      cramps: cramps,
      flatulence: flatulence,
      bowel: bowel,
    );

    await NotesDatabase.instance.create(note);
  }
}
