import 'package:flutter/material.dart';

class recordSymptoms extends StatefulWidget{
  @override
  _recordSymptoms createState(){
    return _recordSymptoms();
  }
}


class _recordSymptoms extends State{
  @override
  Widget build(BuildContext context) {
    double value = 10.0;
    return MaterialApp(
        home: Column(
          children: <Widget>[
          Slider.adaptive(
            value: value,
            min: 1,
            max: 10,
            divisions: 10,
            onChanged: (changedValue){
              setState(() => value = changedValue);
            },
          ),
          ],
        ),
    );
  }
}
