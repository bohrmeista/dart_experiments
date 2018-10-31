import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

class TestBloc extends Bloc<TestEvent, TestState> {
  String _response;

  TestBloc();

  onRefresh() => dispatch(UpdateEvent());

  onClear() => dispatch(ClearEvent());

  @override
  get initialState => TestState.loading();

  @override
  Stream<TestState> mapEventToState(
      TestState state, TestEvent event) async* {
    yield TestState.loading();
    switch (event.runtimeType) {
      case UpdateEvent:
        await _getTest();
        yield TestState.result(_response);
        break;
      case ClearEvent:
        yield TestState.result('');
        break;
      default:
    }
  }
  
  /// Mock method substituting an api call or such
  Future<bool> _getTest() async {
    await Future.delayed(const Duration(seconds: 1));
    _response = 'dingsbums';
    return true;
  }
}

abstract class TestEvent {}

class UpdateEvent extends TestEvent {}

class ClearEvent extends TestEvent {}

class TestState {
  final String text;

  TestState({@required this.text});

  factory TestState.result(String string) =>
      TestState(text: string);

  factory TestState.loading() => TestState(text: '');
}