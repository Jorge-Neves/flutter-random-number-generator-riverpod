import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:random_number_generator/widgets/randomizer_change_notifier.dart';
import 'pages/range_selector_page.dart';

void main() {
  runApp(const AppWidget());
}

final randomizerProvider =
    ChangeNotifierProvider((ref) => RandomizerChangeNotifier());

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'Random Number Generator',
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        home: RangeSelectorPage(),
      ),
    );
  }
}
