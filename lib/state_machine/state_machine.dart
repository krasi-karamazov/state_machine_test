abstract class StateMachine<State, Event> {
  State currentState;

  Map<State, Map<Event, State>> transitions;

  StateMachine(this.currentState, this.transitions);


  void push(Event event) {
    print("Current state: $currentState, executing Event: $event");
    final transitionToState = transitions[currentState]?[event];
    // If there is no state to transition to, sedi grey se
    currentState = transitionToState ?? currentState;
    print("updated state: $currentState");
  }

}