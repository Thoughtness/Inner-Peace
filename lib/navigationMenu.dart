import 'package:flutter/material.dart';

class menu extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Drawer(
      child: Material(
        color: Colors.cyanAccent,
        child: ListView(
          children: <Widget>[
          Container(
            child: Column(
              children: [
                const SizedBox(height: 15),
                ListTile(
                  leading: Icon(Icons.fastfood),
                  title: Text('Mahlzeit erfassen'),
                ),
                const SizedBox(height: 15),
                ListTile(
                  leading: Icon(Icons.fastfood),
                  title: Text('Erfasste Mahlzeiten'),
                ),
                const SizedBox(height: 15),
                ListTile(
                  leading: Icon(Icons.air),
                  title: Text('Symptome erfassen'),
                ),
                const SizedBox(height: 15),
                ListTile(
                  leading: Icon(Icons.show_chart),
                  title: Text('Unverträglichkeiten'),
                ),
                const SizedBox(height: 15),
                ListTile(
                  leading: Icon(Icons.format_list_bulleted),
                  title: Text('Infos'),
                ),
              ],
            ),
          ),
          ],
        ),
      ),
    );
  }
}