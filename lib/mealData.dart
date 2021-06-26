class mealData{
  int id;
  String gericht;
  int zutaten;
  int symptomeTotal;

  mealData({
    required this.id,
    required this.gericht,
    required this.zutaten,
    required this.symptomeTotal,
  });

  Map<String, dynamic> toMap() {
    return {
      'id' : id,
      'gericht': gericht,
      'zutaten': zutaten,
      'symptome': symptomeTotal,
    };
  }

  @override
  String toString() {
    return 'Mahlzeit{id: $id, gericht: $gericht, zutaten: $zutaten, symptome: $symptomeTotal}';
  }
}