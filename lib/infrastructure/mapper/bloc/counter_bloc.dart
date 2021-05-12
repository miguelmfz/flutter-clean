import 'package:flutter_bloc/flutter_bloc.dart';

enum CounterEvent {
  increment,
  decrement,
  clear,
  error,
}

class CounterShoppingCart extends Bloc<CounterEvent, int> {

  CounterShoppingCart() : super(0);

  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    switch (event) {
      case CounterEvent.decrement:
        yield state - 1;
        break;
      case CounterEvent.increment:
        yield state + 1;
        break;
      case CounterEvent.clear:
        yield 0;
        break;
      case CounterEvent.error:
        addError(Exception('unsupported event'));
    }
  }
}