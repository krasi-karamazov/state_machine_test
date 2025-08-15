abstract class StateMachine<State, Event> {
  State _currentState;

  Map<State, Map<Event, State>> transitions;

  StateMachine(this._currentState, this.transitions);

  State get currentState => _currentState;

  //This guy is just a callback signaling that a transition is happening it. can be user for validation, logging, calling an API ot whatever you wish.
  Function (State oldState, State newState)? executeSideEffect;

  void executeTransition(Event event) {
    var oldState = _currentState;
    final transitionToState = transitions[_currentState]?[event];
    // If there is no state to transition to, sedi grey se
    _currentState = transitionToState ?? _currentState;
    if(executeSideEffect != null) {
      executeSideEffect!(oldState, _currentState);
    }
    notifyStateChange();
  }

  List getAvailableEvents() {
    return transitions[_currentState]?.keys.toList() ?? [];
  }

  void notifyStateChange();

}