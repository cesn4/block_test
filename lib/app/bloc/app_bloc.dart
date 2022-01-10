import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc({required AuthenticationRepository authenticationRepository})
      : super(authenticationRepository.currentUser.isNotEmpty
            ? AppState.authenticated(user: authenticationRepository.currentUser)
            : AppState.unauthenticated()) {
    on<AppEvent>(_onUserChanged);
  }

  void _onUserChanged(_AppUserChanged event, Emitter<AppState> emit) {
    emit(state.copyWith(
     
    ));
  }
}
