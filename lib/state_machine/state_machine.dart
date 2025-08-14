abstract class StateMachine<State, Event> {
  State _currentState;

  Map<State, Map<Event, State>> transitions;

  StateMachine(this._currentState, this.transitions);

  State get currentState => _currentState;

  void push(Event event) {
    print("Current state: $_currentState, executing Event: $event");
    final transitionToState = transitions[_currentState]?[event];
    // If there is no state to transition to, sedi grey se
    _currentState = transitionToState ?? _currentState;
    print("updated state: $_currentState");
  }

}