import 'dart:async';
import 'dart:ui';

class DeBouncer {
  final Duration delay;
  Timer? _timer;

  DeBouncer({this.delay = const Duration(milliseconds: 500)});

  void run(VoidCallback callback) {
    _timer?.cancel();
    _timer = Timer(delay, callback);
  }

  void dispose() {
    _timer?.cancel();
  }
}
