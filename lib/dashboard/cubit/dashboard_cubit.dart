import 'package:bloc/bloc.dart';
import 'package:block_test/dashboard/models/dashboard_view.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_state.dart';
part 'dashboard_cubit.freezed.dart';

class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit() : super(_DashboardState());

  void setDashboardView(DashboardViewEnum view) {
    emit(_DashboardState(currentView: view));
  }
}
