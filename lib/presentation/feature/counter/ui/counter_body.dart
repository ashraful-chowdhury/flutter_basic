import 'package:flutter/material.dart';
import 'package:flutter_basic/presentation/feature/counter/cubit/counter_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBody extends StatelessWidget {
  const CounterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Basic'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterCubit, CounterState>(
              builder: (context, state) {
                return Text('Count Value: ${state.count}');
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.read<CounterCubit>().increment();
              },
              child: const Text('Increment +'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.read<CounterCubit>().decrement();
              },
              child: const Text('Decrement -'),
            )
          ],
        ),
      ),
    );
  }
}
