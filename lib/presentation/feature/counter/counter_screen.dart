import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic/presentation/feature/counter/cubit/counter_cubit.dart';
import 'package:flutter_basic/presentation/feature/counter/ui/counter_body.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterCubit>(
      create: (context) => CounterCubit(),
      child: const CounterBody(),
    );
  }
}
