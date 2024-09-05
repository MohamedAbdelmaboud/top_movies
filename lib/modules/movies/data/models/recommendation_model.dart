import '../../domain/entites/recommendation.dart';

class RecommendationModel extends Recommendation {
  const RecommendationModel({required super.id, super.posterPath});
  // from json
  factory RecommendationModel.fromJson(Map<String, dynamic> json) {
    return RecommendationModel(
      id: json['id'],
      posterPath: json['poster_path'],
    );
  }
}
