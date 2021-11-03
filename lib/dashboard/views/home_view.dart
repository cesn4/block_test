import 'package:block_test/dashboard/cubit/dashboard_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardCubit, DashboardState>(
      builder: (context, state) {
        if (state.isLoading) {
          return Center(
            child: CircularProgressIndicator(
              color: Colors.black,
            ),
          );
        }
        return Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(state.title!),
              GestureDetector(
                  onTap: () => context.read<DashboardCubit>().getInfo('123141'),
                  child: Text(state.quote!)),
            ],
          ),
        );
      },
    );
  }
}
