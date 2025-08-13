import 'package:state_machine_test/events/event.dart';
import 'package:state_machine_test/state_machine/state_machine.dart';
import 'package:state_machine_test/states/state.dart';

class SleepyStateMachine extends StateMachine<SleepyState, SleepyEvent> {
  SleepyStateMachine()
    : super(Sleep(), {
        Sleep(): {BangFryingPan(): WakeUp(), OpenMouth(): Snoring()},
        Snoring() : {BangFryingPan() : WakeUp()},
        WakeUp(): {Knockout(): Sleep()},
      });
}
