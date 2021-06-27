// ignore: camel_case_types
class mealData{
  int id;
  String meal;
  List<String> ingredients;
  double symptomTotal;
  double generalWellbeing;
  double cramps;
  double flatulence;
  double bowel;

  mealData({
    required this.id,
    required this.meal,
    required this.ingredients,
    required this.symptomTotal,
    required this.generalWellbeing,
    required this.cramps,
    required this.flatulence,
    required this.bowel,
  });

  Map<String, dynamic> toMap() {
    return {
      'id' : id,
      'meal': meal,
      'ingredients': ingredients,
      'symptomTotal': symptomTotal,
      'generalWellbeing': generalWellbeing,
      'cramps': cramps,
      'flatulence': flatulence,
      'bowel': bowel,
    };
  }

  @override
  String toString() {
    return 'Mahlzeit{id: $id, meal: $meal, ingredients: $ingredients. symptomTotal: $symptomTotal, generalWellbeing: $generalWellbeing, cramps: $cramps, flatulence: $flatulence, bowel: $bowel}';
  }
}