class BahanBaku {
  final int id;
  final String name;
  final String code;

  BahanBaku({required this.id, required this.name, required this.code});

  factory BahanBaku.fromJson(Map<String, dynamic> json) {
    return BahanBaku(id: json['id'], name: json['name'], code: json['code']);
  }
}
