import 'package:flutter/material.dart';
import 'package:inner_peace/main.dart';
import 'package:inner_peace/mealData.dart';
import 'package:inner_peace/navigationMenu.dart';
import 'package:inner_peace/guiElements.dart';
import 'package:inner_peace/recordedSymptoms.dart';

class recordMeal extends StatelessWidget {

  mealData meal = new mealData(id: 0, gericht: "", zutaten: "" );
  final mealName = TextEditingController();
  final ingredients = TextEditingController();
  List<mealData> taskList = [];
  int id = 0;
  String symptoms = "";
  double width = 10.0;
  double height = 20;

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
              // Expanded(
              //   child: Container(
              //     child: taskList.isEmpty
              //         ? Container()
              //         : ListView.builder(itemBuilder: (ctx, index) {
              //             //if (index == taskList.length) return null;
              //             return ListTile(
              //               title: Text(taskList[index].gericht),
              //               leading: Text(taskList[index].id.toString()),
              //             );
              //           }),
              //   ),
              // ),
              Flexible(
                child: Row(
                  children: <Widget>[
                    const SizedBox(width: 10),
                    Flexible(
                      flex: 20,
                      child: customButton(
                        text: 'Symptome hinzufügen',
                        onClick: () {
                          //_submit;
                          id ++;
                          mealData(id: id, gericht: mealName.toString(), zutaten: ingredients.toString());
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
                          // showDialog(
                          //   context: context,
                          //   builder: (context) {
                          //     return AlertDialog(
                          //       content: Text(textController.text),
                          //     );
                          //   },
                          // );
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
  //
  // void _submit() {
  //   if (this.formKey.currentState!.validate()) {
  //     formKey.currentState!.save();
  //   }else{
  //     return null;
  //   }
  //   var employee = mealData(firstname,lastname,mobileno,emailId);
  //   var dbHelper = DBHelper();
  //   dbHelper.saveEmployee(employee);
  //   _showSnackBar("Data saved successfully");
  // }

}
