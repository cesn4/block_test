import 'package:bloc/bloc.dart';
import 'package:block_test/dashboard/models/dashboard_view.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_state.dart';
part 'dashboard_cubit.freezed.dart';

class DashboardCubit extends Cubit<DashboardState> {
  final TabController controller;
  DashboardCubit({required this.controller})
      : super(_DashboardState(controller: controller));

  void setDashboardView(DashboardViewEnum view) {
    switch (view) {
      case DashboardViewEnum.person:
        state.controller.animateTo(0);
        break;
      case DashboardViewEnum.burbles:
        state.controller.animateTo(1);
        break;
      case DashboardViewEnum.clock:
        state.controller.animateTo(2);
        break;
      case DashboardViewEnum.profile:
        state.controller.animateTo(3);
        break;
    }
    emit(state.copyWith(currentView: view));
  }

  Future<void> getInfo(String value) async {
    emit(state.copyWith(isLoading: true));
    var title = await Future.delayed(Duration(milliseconds: 1000), () => value);
    var qoute =
        await Future.delayed(Duration(milliseconds: 1500), () => 'Qoute');
    emit(state.copyWith(quote: qoute, title: title, isLoading: false));
  }
}
