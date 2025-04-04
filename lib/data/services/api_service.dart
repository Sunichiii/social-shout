import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio();
  final String _baseUrl = "https://newsapi.org/v2/top-headlines";
  final String _apiKey = "a778dcab5a09497393e58183d7de68c4";

  Future<List<Map<String, dynamic>>> fetchSamacharByCategory(
      String category) async {
    try {
      final response = await _dio.get(_baseUrl, queryParameters: {
      'category': category,
      'apiKey': _apiKey,
      });

      return (response.data['articles'] as List).map((
          article) => article as Map<String, dynamic>).toList();
    } catch (e) {
      throw Exception("Failed to load samchar");
    }
  }
}