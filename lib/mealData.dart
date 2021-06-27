final String tableNotes = 'notes';

class NoteFields{
  static final List<String> values = [
    /// Add all fields
    id, meal, ingredients, symptomTotal, generalWellbeing, cramps, flatulence, bowel
  ];

  static final String id = '_id';
  static final String meal = '_meal';
  static final String ingredients = '_ingredients';
  static final String symptomTotal = '_symptomTotal';
  static final String generalWellbeing = 'generalWellbeing';
  static final String cramps = 'cramps';
  static final String flatulence = 'flatulence';
  static final String bowel = 'bowel';
}
// ignore: camel_case_types
class mealData{
  int? id;
  String meal;
  List<String> ingredients;
  double symptomTotal;
  double generalWellbeing;
  double cramps;
  double flatulence;
  double bowel;

  mealData({
    this.id,
    required this.meal,
    required this.ingredients,
    required this.symptomTotal,
    required this.generalWellbeing,
    required this.cramps,
    required this.flatulence,
    required this.bowel,
  });

  mealData copy({
    int? id,
    String? meal,
    List<String>? ingredients,
    double? symptomTotal,
    double? generalWellbeing,
    double? cramps,
    double? flatulence,
    double? bowel,
  }) =>
      mealData(
        id: id ?? this.id,
        meal: meal ?? this.meal,
        ingredients: ingredients ?? this.ingredients,
        symptomTotal: symptomTotal ?? this.symptomTotal,
        generalWellbeing: generalWellbeing ?? this.generalWellbeing,
        cramps: cramps ?? this.cramps,
        flatulence: flatulence ?? this.flatulence,
        bowel: bowel ?? this.bowel,
      );

  static mealData fromJson(Map<String, Object?> json) => mealData(
    id: json[NoteFields.id] as int?,
    meal: json[NoteFields.meal] as String,
    ingredients: json[NoteFields.ingredients] as List<String>,
    symptomTotal: json[NoteFields.symptomTotal] as double,
    generalWellbeing: json[NoteFields.generalWellbeing] as double,
    cramps: json[NoteFields.cramps] as double,
    flatulence:[NoteFields.flatulence] as double,
    bowel:json[NoteFields.bowel] as double,
  );

  // String get _meal => meal;

  // Map<String, dynamic> toMap() {
  //   return {
  //     //'id' : id,
  //     'meal': meal,
  //     'ingredients': ingredients,
  //     'symptomTotal': symptomTotal,
  //     'generalWellbeing': generalWellbeing,
  //     'cramps': cramps,
  //     'flatulence': flatulence,
  //     'bowel': bowel,
  //   };
  // }

  Map<String, Object?> toJson() => {
    NoteFields.id: id,
    NoteFields.meal: meal,
    NoteFields.ingredients: ingredients,
    NoteFields.symptomTotal: symptomTotal,
    NoteFields.generalWellbeing: generalWellbeing,
    NoteFields.cramps: cramps,
    NoteFields.flatulence: flatulence,
    NoteFields.bowel: bowel,
  };

  // mealData.mapToObject(Map<String, dynamic> map){
  //   this.meal = map['meal'];
  //   this.ingredients = map['ingredients'];
  //   this.symptomTotal = map['symptomTotal'];
  //   this.generalWellbeing = map['generalWellbeing'];
  //   this.cramps = map['cramps'];
  //   this.flatulence = map['flatulence'];
  //   this.bowel = map['bowel'];
  // }

  // @override
  // String toString() {
  //   return 'Mahlzeit{meal: $meal, ingredients: $ingredients. symptomTotal: $symptomTotal, generalWellbeing: $generalWellbeing, cramps: $cramps, flatulence: $flatulence, bowel: $bowel}';
  // }
}