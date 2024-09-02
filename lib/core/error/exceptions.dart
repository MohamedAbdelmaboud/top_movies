import 'package:top_movies/core/error/error_message_model.dart';

class CustomException implements Exception {
  final ErrorMessageModel errorMessageModel;

  CustomException({
    required this.errorMessageModel,
  });
  @override
  String toString() => errorMessageModel.statusMessage;
}