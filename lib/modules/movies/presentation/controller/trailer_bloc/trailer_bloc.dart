import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/usecases/get_trailer_use_case.dart';

part 'trailer_event.dart';
part 'trailer_state.dart';

class TrailerBloc extends Bloc<TrailerEvent, TrailerState> {
  final GetTrailerUseCase getTrailerUseCase;
  late String key;
  TrailerBloc(this.getTrailerUseCase) : super(TrailerInitial()) {
    on<GetTrailerEvent>(_getTrailer);
  }

  FutureOr<void> _getTrailer(
      GetTrailerEvent event, Emitter<TrailerState> emit) async {
    emit(TrailerLoading());
    final result = await getTrailerUseCase.execute(event.movieId);
    result.fold(
      (failure) {
        emit(TrailerFailure(failure.errorMessage));
      },
      (trailer) {
        key = trailer[0].key;

        emit(TrailerSuccess(trailer[0].key));
      },
    );
  }
}
