import 'package:counter_bloc/page_bloc/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBlocPage extends StatelessWidget {
  const CounterBlocPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('counter bloc')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, CounterState>(
              builder: (constext, state) => Text(
                'Counter ${state.counter}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton.icon(
                  icon: const Icon(Icons.remove),
                  label: const Text(''),
                  onPressed: () =>
                      context.read<CounterBloc>().add(CounterDecrement()),
                ),
                TextButton.icon(
                  icon: const Icon(Icons.add),
                  label: const Text(''),
                  onPressed: () =>
                      context.read<CounterBloc>().add(CounterIncrement()),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
