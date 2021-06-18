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
                  title: Text('Mahlzeit erfassen'),
                ),
                const SizedBox(height: 15),
                ListTile(
                  title: Text('Erfasste Mahlzeiten'),
                ),
                const SizedBox(height: 15),
                ListTile(
                  title: Text('Symptome erfassen'),
                ),
                const SizedBox(height: 15),
                ListTile(
                  title: Text('Unverträglichkeiten'),
                ),
                const SizedBox(height: 15),
                ListTile(
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