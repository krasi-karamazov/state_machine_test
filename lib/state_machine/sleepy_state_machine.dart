import 'package:flutter/foundation.dart';
import 'package:state_machine_test/events/event.dart';
import 'package:state_machine_test/state_machine/state_machine.dart';
import 'package:state_machine_test/states/state.dart';

class SleepyStateMachine extends StateMachine<SleepyState, SleepyEvent> with ChangeNotifier {
  SleepyStateMachine()
    : super(Sleep(), {
        Sleep(): {BangFryingPan(): WakeUp(), OpenMouth(): Snoring()},
        Snoring() : {BangFryingPan() : WakeUp()},
        WakeUp(): {Knockout(): Sleep()},
      });

  @override
  void notifyStateChange() {
    //maybe we need to do something here, maybe not, who cares, figure it out by yourself
    print(currentState);
    print(this.hasListeners);
    notifyListeners();
  }
}
