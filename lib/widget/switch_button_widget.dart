import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_study/notifiers/switch.dart';

class SwitchButtonWidget extends ConsumerWidget {
  const SwitchButtonWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String switchText = ref.watch(switchProvider);

    return Scaffold(
      body: Center(
          child : Column(children: [
        Text(switchText),
        IconButton(onPressed: () => ref.read(switchProvider.notifier).switchText(), icon: const Icon(Icons.cached))
      ],)),
    );
  }
}