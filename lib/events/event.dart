sealed class SleepyEvent<T> {
  @override
  int get hashCode => 1;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is T;
  }
}

class BangFryingPan extends SleepyEvent<BangFryingPan> {
  @override
  String toString() => "Banging Frying Pan";
}

class LightNudge extends SleepyEvent<LightNudge> {
  @override
  String toString() => "Light Nudge";
}

class Knockout extends SleepyEvent<Knockout> {
  @override
  String toString() => "Knockout";
}

class OpenMouth extends SleepyEvent<OpenMouth> {
  @override
  String toString() => "OpenMouth";
}

