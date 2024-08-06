class Material {
  final int id;
  final String name;
  final String code;

  Material({required this.id, required this.name, required this.code});

  factory Material.fromJson(Map<String, dynamic> json) {
    return Material(
      id: json['id'],
      name: json['name'],
      code: json['code'],
    );
  }
}
