import 'package:flutter/material.dart';

class customRow extends StatelessWidget {
  String description = "";
  String title = "";

  customRow({
    required this.title,
    required this.description,
});

  @override
  Widget build(BuildContext context) {
    double width = 10.0;
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
}

class customButton extends StatelessWidget{
  final VoidCallback onClick;
  final String text;


  customButton({
    required this.text,
    required this.onClick,
});

  @override
  Widget build(BuildContext context) {
    double width = 10.0;

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

class customSlider extends StatefulWidget{
  @override
  _customSlider createState(){
    return _customSlider();
  }
}

class _customSlider extends State{
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