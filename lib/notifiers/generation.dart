import 'package:hooks_riverpod/hooks_riverpod.dart';

final generationProvider = NotifierProvider<GenerationNotifier, int>(() {
  return GenerationNotifier();
});

class GenerationNotifier extends Notifier<int> {
  @override
  int build() {
    return 1; // initial value
  }

  void add() {
    state = state + 1;
  }

  void reset() {
    state = 1;
  }
}