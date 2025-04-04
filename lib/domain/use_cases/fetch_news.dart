import 'package:social_shout/data/repository/news_repository.dart';

class FetchSamacharUsecase{
  final SamacharRepository repository;

  FetchSamacharUsecase({required this.repository});

  Future<List<Map<String, dynamic>>> execute (String category){
    return repository.getSamachar(category);
  }
}