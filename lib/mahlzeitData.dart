import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';


class mahlzeitData{

  String gericht;
  int zutaten;
  int symptomeTotal;


  mahlzeitData({
    required this.gericht,
    required this.zutaten,
    required this.symptomeTotal,
})

}