part of 'dashboard_cubit.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState({
    @Default(DashboardViewEnum.person) DashboardViewEnum currentView,
    required TabController controller,
    String? title,
    String? quote,
    @Default(true) bool isLoading,
    @Default(false) bool hasError,
  }) = _DashboardState;
}
