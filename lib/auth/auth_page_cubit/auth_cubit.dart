import 'package:bloc/bloc.dart';

class AuthPageCubit extends Cubit<int> {
  AuthPageCubit() : super(0);

  void navigateToLogin() => emit(0);

  /// Subtract 1 from the current state.
  void navigateToRegister() => emit(1);
}
