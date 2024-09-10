import 'error_message_model.dart';

class CustomAuthException implements Exception {
  final ErrorMessageModel errorMessageModel;

  CustomAuthException({
    required this.errorMessageModel,
  });
  @override
  String toString() => errorMessageModel.statusMessage;
}
