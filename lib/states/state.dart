sealed class SleepyState {}

class Sleep extends SleepyState {
  @override
  String toString() => 'Sleep';

  @override
  int get hashCode => 1;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Sleep;
  }
}

class WakeUp extends SleepyState {
  @override
  String toString() => 'WakeUp';

  @override
  int get hashCode => 1;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is WakeUp;
  }
}

class Snoring extends SleepyState {
  @override
  String toString() => "(loud snoring noises)";

  @override
  int get hashCode => 1;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Snoring;
  }
}