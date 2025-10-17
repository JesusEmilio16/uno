import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uno/presentation/providers/count_provider.dart';
import 'package:uno/main.dart';

class CountScreen extends ConsumerWidget {
  const CountScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nombre = ref.watch(nombreProvider);
    final count = ref.watch(countProvider);
    final theme = ref.watch(themeProvider);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("$nombre"),
              Text("hola jesus perro"),
              Text("click : $count"),
              FloatingActionButton(
                onPressed: () {
                  //ref.read(countProvider.notifier).state++;
                  ref.read(countProvider.notifier).update((res) {
                    res = res--;
                    return res;
                  });
                },
                child: Icon(Icons.plus_one),
              ),

              IconButton(onPressed: () {
                ref.read(themeProvider.notifier).update((res) => !res);
              },icon: theme?Icon(Icons.dark_mode):Icon(Icons.light_mode) )

            ],
          ),
        ),
      ),
    );
  }
}
