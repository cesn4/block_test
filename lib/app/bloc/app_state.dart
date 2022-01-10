part of 'app_bloc.dart';

enum AppStatus {
  authenticated,
  unauthenticated,
}

@freezed
class AppState with _$AppState {
  const factory AppState.authenticated(
      {User? user,
      @Default(AppStatus.authenticated) AppStatus appStatus}) = _Authenticated;

  const factory AppState.unauthenticated([
    @Default(AppStatus.authenticated) AppStatus appStatus,
    @Default(User.empty) User user,
  ]) = _UnAuthenticated;
}
