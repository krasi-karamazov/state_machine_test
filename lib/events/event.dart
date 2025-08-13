sealed class SleepyEvent{}

class BangFryingPan extends SleepyEvent {
  @override
  String toString() => "Banging Frying Pan";

  @override
  int get hashCode => 1;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is BangFryingPan;
  }
}

class Knockout extends SleepyEvent {
  @override
  String toString() => "zzzzzzzzzzzzzzzzz";

  @override
  int get hashCode => 1;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Knockout;
  }
}

class OpenMouth extends SleepyEvent {
  @override
  String toString() => "yawwwwwwn";

  @override
  int get hashCode => 1;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is OpenMouth;
  }
}

