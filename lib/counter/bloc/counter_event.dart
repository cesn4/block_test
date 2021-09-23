part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

class Increment extends CounterEvent {}

class ButtonActive extends CounterEvent {}

class ButtonInActive extends CounterEvent {}
