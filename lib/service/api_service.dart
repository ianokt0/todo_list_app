import 'dart:convert';
import 'package:flutter_course/model/bahanbaku.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static const String _baseUrl =
      'https://warehouse.indonesiamitramedia.com/api/v1';

  Future<List<BahanBaku>> fetchBahanBaku() async {
    final response = await http.get(Uri.parse('$_baseUrl/materials'));

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonResponse = json.decode(response.body);
      List<dynamic> data = jsonResponse['data'];
      return data.map((material) => BahanBaku.fromJson(material)).toList();
    } else {
      throw Exception('Failed to load materials');
    }
  }
}
