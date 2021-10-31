part of 'dashboard_cubit.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState({
    @Default(DashboardViewEnum.person) DashboardViewEnum currentView,
  }) = _DashboardState;
}
