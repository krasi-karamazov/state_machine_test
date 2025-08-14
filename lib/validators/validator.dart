import 'package:state_machine_test/states/state.dart';

abstract class Validator<T extends SleepyState> {
  bool isStateValid(T state);
}