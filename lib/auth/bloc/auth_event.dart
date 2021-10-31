part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authViewChanged(AuthViewEnum view) = _AuthViewChanged;
  const factory AuthEvent.loginEmailChanged(String email) = _LoginEmailChanged;
  const factory AuthEvent.loginEmailUnfocused() = _LoginEmailUnfocused;
  const factory AuthEvent.loginPasswordChanged(String password) =
      _LoginPasswordChanged;
  const factory AuthEvent.loginPasswordUnfocused() =
      _LoginPasswordUnfocused;
  const factory AuthEvent.registerEmailChanged(String email) =
      _RegisterEmailChanged;
  const factory AuthEvent.registerEmailUnfocused() =
      _RegisterEmailUnfocused;
  const factory AuthEvent.registerPasswordChanged(String password) =
      _RegisterPasswordChanged;
  const factory AuthEvent.registerPasswordUnfocused() =
      _RegisterPasswordUnfocused;
  const factory AuthEvent.registerPassword_2Changed(String password) =
      _RegisterPassword_2Changed;
  const factory AuthEvent.registerPassword_2Unfocused() =
      _RegisterPassword_2Unfocused;
}
