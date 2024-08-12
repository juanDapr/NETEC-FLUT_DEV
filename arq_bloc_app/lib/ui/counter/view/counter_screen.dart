import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/counter_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: const Text("Counter with bloc")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BlocBuilder<CounterBloc, int>(
              builder: (context, count) {
                return Text('$count',
                    style: Theme.of(context).textTheme.headlineMedium);
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () =>
                      context.read<CounterBloc>().add(CounterEvent.increment),
                  tooltip: 'increment',
                  heroTag: null,
                  child: const Icon(Icons.add),
                ),
                const SizedBox(
                  width: 16,
                ),
                FloatingActionButton(
                  onPressed: () =>
                      context.read<CounterBloc>().add(CounterEvent.decrement),
                  tooltip: 'Decrement',
                  heroTag: null,
                  child: const Icon(Icons.remove),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
