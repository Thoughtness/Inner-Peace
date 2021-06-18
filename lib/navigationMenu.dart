import 'package:flutter/material.dart';
import 'package:inner_peace/erfassteMahlzeiten.dart';
import 'package:inner_peace/infos.dart';
import 'package:inner_peace/mahlzeitErfassen.dart';
import 'package:inner_peace/symptomeErfassen.dart';
import 'package:inner_peace/unvertraeglichkeiten.dart';

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
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => mahlzeitErfassen(),
                    ));
                  }
                ),
                const SizedBox(height: 15),
                ListTile(
                  leading: Icon(Icons.fastfood),
                  title: Text('Erfasste Mahlzeiten'),
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => erfassteMahlzeiten(),
                      ));
                    }
                ),
                const SizedBox(height: 15),
                ListTile(
                  leading: Icon(Icons.air),
                  title: Text('Symptome erfassen'),
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => symptomeErfassen(),
                      ));
                    }
                ),
                const SizedBox(height: 15),
                ListTile(
                  leading: Icon(Icons.show_chart),
                  title: Text('Unverträglichkeiten'),
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => unvertraeglichkeiten(),
                      ));
                    }
                ),
                const SizedBox(height: 15),
                ListTile(
                  leading: Icon(Icons.format_list_bulleted),
                  title: Text('Infos'),
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => infos(),
                      ));
                    }
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