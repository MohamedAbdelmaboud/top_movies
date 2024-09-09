part of 'trailer_bloc.dart';

sealed class TrailerState extends Equatable {
  const TrailerState();

  @override
  List<Object> get props => [];
}

final class TrailerInitial extends TrailerState {}

// sucess failure loading
final class TrailerLoading extends TrailerState {}

final class TrailerSuccess extends TrailerState {
  final String key;
  const TrailerSuccess(this.key);
  @override
  List<Object> get props => [key];
}

final class TrailerFailure extends TrailerState {
  final String message;
  const TrailerFailure(this.message);
  @override
  List<Object> get props => [message];
}
