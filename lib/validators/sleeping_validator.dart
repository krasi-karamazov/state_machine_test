import 'package:state_machine_test/states/state.dart';
import 'package:state_machine_test/validators/validator.dart';

class SleepingValidator extends Validator<Sleep> {
  @override
  bool isStateValid(Sleep state) {
    if(state.isSleeping && state.isInPijamas) {
      return true;
    }
    return false;
  }
}