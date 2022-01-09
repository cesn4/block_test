import 'package:bloc/bloc.dart';
import 'package:block_test/auth/models/auth_view.dart';
import 'package:block_test/auth/models/email.dart';
import 'package:block_test/auth/models/password.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const _AuthState()) {
    on<_AuthViewChanged>(_onAuthViewChanged);
    on<_LoginEmailChanged>(_onLoginEmailChanged);
    on<_LoginEmailUnfocused>(_onLoginEmailUnfocused);
    on<_LoginPasswordChanged>(_onLoginPasswordChanged);
    on<_LoginPasswordUnfocused>(_onLoginPasswordUnfocused);
    on<_RegisterEmailChanged>(_onRegisterEmailChanged);
    on<_RegisterEmailUnfocused>(_onRegisterEmailUnfocused);
    on<_RegisterPasswordChanged>(_onRegisterPasswordChanged);
    on<_RegisterPasswordUnfocused>(_onRegisterPasswordUnfocused);
    on<_RegisterPassword_2Changed>(_onRegisterPassword_2Changed);
    on<_RegisterPassword_2Unfocused>(_onRegisterPassword_2Unfocused);
  }

  void _onAuthViewChanged(_AuthViewChanged event, Emitter<AuthState> emit) {
    emit(state.copyWith(
      authView: event.view,
    ));
  }

  void _onLoginEmailChanged(_LoginEmailChanged event, Emitter<AuthState> emit) {
    final email = Email.dirty(event.email);
    emit(state.copyWith(
      loginEmail: email.valid ? email : Email.pure(event.email),
      loginStatus: Formz.validate([email, state.loginPassword]),
    ));
  }

  void _onLoginEmailUnfocused(
      _LoginEmailUnfocused event, Emitter<AuthState> emit) {
    final email = Email.dirty(state.loginEmail.value);
    emit(state.copyWith(
      loginEmail: email,
      loginStatus: Formz.validate([email, state.loginPassword]),
    ));
  }

  void _onLoginPasswordChanged(
      _LoginPasswordChanged event, Emitter<AuthState> emit) {
    final password = Password.dirty(event.password);
    emit(state.copyWith(
      loginPassword: password.valid ? password : Password.pure(event.password),
      loginStatus: Formz.validate([state.loginEmail, password]),
    ));
  }

  void _onLoginPasswordUnfocused(
    _LoginPasswordUnfocused event,
    Emitter<AuthState> emit,
  ) {
    final password = Password.dirty(state.loginPassword.value);
    emit(state.copyWith(
      loginPassword: password,
      loginStatus: Formz.validate([state.loginEmail, password]),
    ));
  }

  void _onRegisterEmailChanged(
      _RegisterEmailChanged event, Emitter<AuthState> emit) {
    final email = Email.dirty(event.email);
    emit(state.copyWith(
      registerEmail: email.valid ? email : Email.pure(event.email),
      registerStatus: Formz.validate([email, state.registerPassword]),
    ));
  }

  void _onRegisterEmailUnfocused(
      _RegisterEmailUnfocused event, Emitter<AuthState> emit) {
    final email = Email.dirty(state.registerEmail.value);
    emit(state.copyWith(
      registerEmail: email,
      registerStatus: Formz.validate([email, state.registerPassword]),
    ));
  }

  void _onRegisterPasswordChanged(
      _RegisterPasswordChanged event, Emitter<AuthState> emit) {
    final password = Password.dirty(event.password);
    emit(state.copyWith(
      registerPassword:
          password.valid ? password : Password.pure(event.password),
      registerStatus: Formz.validate([state.registerEmail, password]),
    ));
  }

  void _onRegisterPasswordUnfocused(
    _RegisterPasswordUnfocused event,
    Emitter<AuthState> emit,
  ) {
    final password = Password.dirty(state.registerPassword.value);
    emit(state.copyWith(
      registerPassword: password,
      registerStatus: Formz.validate([state.registerEmail, password]),
    ));
  }

  void _onRegisterPassword_2Changed(
      _RegisterPassword_2Changed event, Emitter<AuthState> emit) {
    final password = Password.dirty(event.password);
    emit(state.copyWith(
      registerPassword_2:
          password.valid ? password : Password.pure(event.password),
      registerStatus: Formz.validate([state.registerEmail, password]),
    ));
  }

  void _onRegisterPassword_2Unfocused(
    _RegisterPassword_2Unfocused event,
    Emitter<AuthState> emit,
  ) {
    final password = Password.dirty(state.registerPassword_2.value);
    emit(state.copyWith(
      registerPassword_2: password,
      registerStatus: Formz.validate([state.registerEmail, password]),
    ));
  }
}
