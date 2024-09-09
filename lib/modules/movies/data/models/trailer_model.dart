import '../../domain/entites/trailer.dart';

class TrailerModel extends Trailer {
  const TrailerModel({
    required super.key,
  });
  // from json
  factory TrailerModel.fromJson(Map<String, dynamic> json) {
    return TrailerModel(
      key: json['key'],
    );
  }

}
