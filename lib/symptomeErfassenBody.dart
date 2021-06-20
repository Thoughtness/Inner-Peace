import 'package:flutter/material.dart';

class symptomeErfassenBody extends StatefulWidget{
  @override
  _symptomeErfassenBody createState(){
    return _symptomeErfassenBody();
  }
}


class _symptomeErfassenBody extends State{
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
