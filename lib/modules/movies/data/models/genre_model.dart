import '../../domain/entites/genre.dart';

class GenreModel extends Genre {
  const GenreModel({
    required super.id,
    required super.name,
  });
  // factory method
  factory GenreModel.fromJson(Map<String, dynamic> json) {
    return GenreModel(
      id: json['id'],
      name: json['name'],
    );
  }
}
