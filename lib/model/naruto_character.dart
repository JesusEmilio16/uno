class NarutoCharacter {
  int id;
  String name;
  List<String> imagenes;
  List<String> jutsu;

  NarutoCharacter({
    required this.id,
    required this.name,
    required this.imagenes,
    required this.jutsu,
  });

  factory NarutoCharacter.fromJsonMap(Map<String, dynamic> json) {
    return NarutoCharacter(
      id: json['id'] ?? 0,
      name: json['name'] ?? 'no name',
      imagenes: json['images'] !=null ? List<String>.from(json['images']) : [""],
      jutsu: json['jutsu'] !=null ? List<String>.from(json['jutsu']) : [""],
    );
  }

}
