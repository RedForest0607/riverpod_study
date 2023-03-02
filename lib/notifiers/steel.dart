import 'package:hooks_riverpod/hooks_riverpod.dart';

final steelProvider = NotifierProvider<SteelNotifier, int>(() {
  SteelNotifier steelProvider = SteelNotifier();
  return steelProvider;
});

class SteelNotifier extends Notifier<int> {
  @override
  int build() {
    return 1; // initial value
  }

  void reset() {
    state = 0;
  }

  void add() {
    state = state + 1;
  }

  void minus() {
    if (state > 0) {
      state = state - 1;
    }
  }

  void set(int resource) {
    state = resource;
  }
}