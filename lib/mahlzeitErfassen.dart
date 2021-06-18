import 'package:flutter/material.dart';
import 'package:inner_peace/navigationMenu.dart';

class mahlzeitErfassen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Colors.teal[100],
      endDrawer: menu(),
      appBar: AppBar(
        title: Text('Mahlzeit erfassen'),
        backgroundColor: Colors.cyanAccent,
      ),
      body: Table(border: TableBorder.all(),
          columnWidths: const <int, TableColumnWidth>{
            0: IntrinsicColumnWidth(),
            1: FlexColumnWidth(),
            2: FixedColumnWidth(50),
          },
          //defaultVerticalAlignment: TableCellVerticalAlignment.top,
          children: <TableRow>[
            TableRow(children: <Widget>[
              Container(
                padding: const EdgeInsets.all(20),
                child: const Text("Mahlzeit:"),
              ),
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.top,
                child: Container(
                  height: 102,
                  color: Colors.red,
              ),
              )]),
          ]));
}
