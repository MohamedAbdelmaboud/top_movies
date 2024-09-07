import '../../domain/entites/cast.dart';

class CastModel extends Cast {
  CastModel({
    required super.name,
    required super.character,
    super.profilePath,
  });
  // from json
  factory CastModel.fromJson(Map<String, dynamic> json) {
    return CastModel(
      name: json['name'],
      character: json['character'],
      profilePath: json['profile_path'] ?? '/tEXsLuN0w1aaosb4kzf5DwT7rok.jpg',
    );
  }

  // to json
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'character': character,
      'profile_path': profilePath,
    };
  }
}
