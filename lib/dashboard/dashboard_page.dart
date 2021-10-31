import 'package:animations/animations.dart';
import 'package:block_test/dashboard/models/dashboard_view.dart';
import 'package:block_test/dashboard/widgets/dashboard_navigation_bar.dart';
import 'package:block_test/widgets/extensions/base_extension.dart';
import 'package:block_test/widgets/layout/main_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/dashboard_cubit.dart';

class DahboardPage extends StatelessWidget with BaseExtension {
  const DahboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _buildView(DashboardViewEnum view) {
      switch (view) {
        case DashboardViewEnum.person:
          return Center(
            key: Key('wup'),
            child: Text('hello'));
        case DashboardViewEnum.burbles:
          return Text('hello');
        case DashboardViewEnum.clock:
          return Text('hello');
        case DashboardViewEnum.profile:
          return Text('hello');
      }
    }

    return BlocProvider(
      create: (context) => DashboardCubit(),
      child: BlocBuilder<DashboardCubit, DashboardState>(
        builder: (context, state) {
          return MainLayout(
            child: PageTransitionSwitcher(
              duration: const Duration(milliseconds: 2000),
              transitionBuilder: (
                Widget child,
                Animation<double> animation,
                Animation<double> secondaryAnimation,
              ) {
                return SlideTransition(
                    position: Tween<Offset>(
                      begin: Offset.zero,
                      end: const Offset(1.5, 0.0),
                    ).animate(animation),
                    child: _buildView(state.currentView));
              },
            ),
            bottomNavigationBar: DashboardNavigtionBar(),
          );
        },
      ),
    );
  }
}
