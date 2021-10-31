part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState([
    @Default(AuthViewEnum.login) AuthViewEnum authView,
    @Default(Email.pure()) Email loginEmail,
    @Default(Password.pure()) Password loginPassword,
    @Default(FormzStatus.pure) FormzStatus loginStatus,
    @Default(Email.pure()) Email registerEmail,
    @Default(Password.pure()) Password registerPassword,
    @Default(Password.pure()) Password registerPassword_2,
    @Default(FormzStatus.pure) FormzStatus registerStatus,
  ]) = _AuthState;
}
