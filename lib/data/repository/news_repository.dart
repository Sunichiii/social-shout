import 'package:social_shout/data/services/api_service.dart';

class SamacharRepository{
  final ApiService apiService;

  SamacharRepository({required this.apiService});

  Future<List<Map<String, dynamic>>> getSamachar(String category){
    return apiService.fetchSamacharByCategory(category);
  }
}