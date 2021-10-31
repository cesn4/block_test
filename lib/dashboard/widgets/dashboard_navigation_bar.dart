import 'package:block_test/dashboard/cubit/dashboard_cubit.dart';
import 'package:block_test/dashboard/models/dashboard_view.dart';
import 'package:block_test/dashboard/widgets/nav_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardNavigtionBar extends StatelessWidget {
  const DashboardNavigtionBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardCubit, DashboardState>(
      builder: (context, state) {
        return Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          color: Colors.black,
          child: SafeArea(
            top: false,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NavButton(
                    icon: Icons.accessibility_new_outlined,
                    onPressed: () => context
                        .read<DashboardCubit>()
                        .setDashboardView(DashboardViewEnum.person),
                    isActive: state.currentView == DashboardViewEnum.person),
                NavButton(
                  icon: Icons.workspaces_outlined,
                  onPressed: () => context
                      .read<DashboardCubit>()
                      .setDashboardView(DashboardViewEnum.burbles),
                  isActive: state.currentView == DashboardViewEnum.burbles,
                ),
                NavButton(
                  icon: Icons.access_time_filled_outlined,
                  onPressed: () => context
                      .read<DashboardCubit>()
                      .setDashboardView(DashboardViewEnum.clock),
                  isActive: state.currentView == DashboardViewEnum.clock,
                ),
                NavButton(
                  icon: Icons.person,
                  onPressed: () => context
                      .read<DashboardCubit>()
                      .setDashboardView(DashboardViewEnum.profile),
                  isActive: state.currentView == DashboardViewEnum.profile,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
