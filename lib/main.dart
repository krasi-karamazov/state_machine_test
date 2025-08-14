import 'package:flutter/material.dart';
import 'package:state_machine_test/state_machine/sleepy_state_machine.dart';
import 'package:state_machine_test/states/state.dart';
import 'package:state_machine_test/validators/sleeping_validator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyHomePage(),
    );
  }
}

bool isStateValid(SleepyState state) {
  if (state is Sleep) {
    return SleepingValidator().isStateValid(state);
  }
  //TODO validate states here
  return false;
}

void manipulateState(SleepyState state) {
  //Let's pretend that the user taps a button or inputs a value and the state changes
  if (state is Sleep) {
    state.isSleeping = true;
    state.isInPijamas = true;
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<StatefulWidget> createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {
  final sleepyStateMachine = SleepyStateMachine();
  late List availableEvents = sleepyStateMachine.getAvailableEvents();


  @override
  Widget build(BuildContext context) {
    manipulateState(sleepyStateMachine.currentState);
    return ListenableBuilder(listenable: sleepyStateMachine, builder: (BuildContext context, Widget? child) {
      return Scaffold(
        appBar: AppBar(
          title: Text(sleepyStateMachine.currentState.toString()),
        ),
        body: Center(
          child: ListView.builder(padding: const EdgeInsets.all(8), itemCount: availableEvents.length, itemBuilder: (BuildContext context, int index) {
            return OutlinedButton(
              onPressed: () {
                sleepyStateMachine.executeTransition(availableEvents[index]);
                setState(() {
                  availableEvents = sleepyStateMachine.getAvailableEvents();
                });
                },
              child: Center(child: Text('Event ${availableEvents[index].toString()}')),
            );
          }),
        ),
      );
    });

  }
}


