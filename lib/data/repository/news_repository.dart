import 'package:social_shout/data/services/api_service.dart';

class NewsRepository{
  final ApiService apiService;

  NewsRepository({required this.apiService});

  Future<List<Map<String, dynamic>>> getSamachar(String category){
    return apiService.fetchNewsByCategory(category);
  }
}