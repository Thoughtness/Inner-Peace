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
  double? symptomTotal;
  double? generalWellbeing;
  double? cramps;
  double? flatulence;
  double? bowel;

  mealData({
    this.id,
    required this.meal,
    required this.ingredients,
    this.symptomTotal,
    this.generalWellbeing,
    this.cramps,
    this.flatulence,
    this.bowel,
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
    symptomTotal: json[NoteFields.symptomTotal] as double?,
    generalWellbeing: json[NoteFields.generalWellbeing] as double?,
    cramps: json[NoteFields.cramps] as double?,
    flatulence:[NoteFields.flatulence] as double?,
    bowel:json[NoteFields.bowel] as double?,
  );

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

}