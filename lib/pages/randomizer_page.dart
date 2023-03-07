import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:random_number_generator/main.dart';

class RandomizerPage extends ConsumerWidget {
  const RandomizerPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final randomizer = ref.watch(randomizerProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Random Number"),
      ),
      body: Center(
        child: Text(
          randomizer.generatedNumber?.toString() ??
              "Click the button to generate your number.",
          style: const TextStyle(fontSize: 17),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text("Generate"),
        onPressed: () {
          ref.read(randomizerProvider).generateRandomNumber();
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
