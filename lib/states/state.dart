sealed class SleepyState<T> {
  @override
  int get hashCode => 1;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is T;
  }
}

class Sleep extends SleepyState<Sleep> {
  late bool isSleeping;
  late bool isInPijamas;

  @override
  String toString() => 'Sleep state';
}

class WakeUp extends SleepyState<WakeUp> {
  late bool isAwake;
  late bool isInBed;
  late bool isInPijamas;
  late bool isAngry;
  @override
  String toString() => 'Wake Up state';
}

class Snoring extends SleepyState<Snoring> {
  late bool isSleeping;
  late bool isInBed;
  late bool isInPijamas;
  late bool isSnoring;
  @override
  String toString() => "Snoring state";
}