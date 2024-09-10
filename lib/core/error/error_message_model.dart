import 'package:equatable/equatable.dart';

class ErrorMessageModel extends Equatable {
  final bool? success;
  final int? statusCode;
  final String statusMessage;

  const ErrorMessageModel({
     this.success,
     this.statusCode,
    required this.statusMessage,
  });

  @override
  List<Object?> get props => [success, statusCode, statusMessage];
}
