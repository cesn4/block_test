part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.loginEmailChanged(User user) = _AppUserChanged;
}
