

class DummyModel {
  int id;
  String designation; //Bezeichnung
  String manufacturer; //Hersteller
  String category; //Kategorie
  String pictureUrl; //BildUrl
  String barCode; //Barcode
  String addedInfo; //HinzugefuegtInfo
  int portionInGrams; //PortionInGramm
  // String portionDescriptionPid; //PortionBezeichnungPid
  // String portionDesignation; //Portion designation
  String unit; //Einheit
  int sugar; //Zucker
  int calories; //Kalorien
  int protein; //Eiweiss
  int fat; //Fett
  int water; //Wasser
  int carbs; //Kohlenhydrate
  bool vegan; //Vegan

  DummyModel({
    this.id,
    this.designation,
    this.manufacturer,
    this.category,
    this.pictureUrl,
    this.barCode,
    this.addedInfo,
    this.portionInGrams,
    this.unit,
    this.sugar,
    this.calories,
    this.protein,
    this.fat,
    this.water,
    this.vegan,
    this.carbs
  });

  factory DummyModel.fromJSON(Map<String,dynamic> json) {
    return DummyModel(
      id: json['id'],
      designation: json['Bezeichnung'],
      manufacturer: json['Hersteller'],
      category: json['Kategorie'],
      pictureUrl: json['BildUrl'],
      barCode: json['Barcode'],
      addedInfo: json['HinzugefuegtInfo'],
      portionInGrams: json['PortionInGramm'],
      unit: json['Einheit'],
      sugar: json['Zucker'],
      calories: json['Kalorien'],
      protein: json['Eiweiss'],
      fat: json['Fett'],
      water: json['Wasser'],
      vegan: json['Vegan'],
      carbs: json['Kohlenhydrate']
    );
  }
}