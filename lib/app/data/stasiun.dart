class Stasiun {
  String? code, name, city, cityname;

  Stasiun({this.code, this.name, this.city, this.cityname});

  factory Stasiun.fromJson(Map<String, dynamic> json) {
    return Stasiun(
      code: json['code'],
      name: json['name'],
      city: json['city'],
      cityname: json['cityname'],
    );
  }
}
