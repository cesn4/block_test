import 'package:block_test/dashboard/views/clock_view.dart';
import 'package:block_test/dashboard/views/dots_view.dart';
import 'package:block_test/dashboard/views/home_view.dart';
import 'package:block_test/dashboard/views/profile_view.dart';
import 'package:block_test/dashboard/widgets/dashboard_navigation_bar.dart';
import 'package:block_test/widgets/extensions/base_extension.dart';
import 'package:block_test/widgets/layout/main_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/dashboard_cubit.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage>
    with SingleTickerProviderStateMixin, BaseExtension {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        var bloc =
            DashboardCubit(controller: TabController(length: 4, vsync: this));
        bloc.getInfo('sup');
        return bloc;
      },
      child: BlocConsumer<DashboardCubit, DashboardState>(
        listenWhen: (oldState, newState) =>
            oldState.currentView != newState.currentView,
        listener: (context, state) {
          showSnackBar(
            context,
            state.currentView.toString(),
          );
        },
        builder: (context, state) {
          return MainLayout(
            child: TabBarView(
              controller: state.controller,
              children: [
                HomeView(),
                DotsView(),
                ClockView(),
                ProfileView(),
              ],
            ),
            bottomNavigationBar: DashboardNavigtionBar(),
          );
        },
      ),
    );
  }
}
