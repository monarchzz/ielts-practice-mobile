import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_navigation_event.dart';
part 'bottom_navigation_state.dart';
part 'bottom_navigation_bloc.freezed.dart';

class BottomNavigationBloc
    extends Bloc<BottomNavigationEvent, BottomNavigationState> {
  BottomNavigationBloc() : super(const _Initial()) {
    on<_Started>(_onStared);
    on<_BottomNavigationIndexChanged>(_onBottomNavigationIndexChanged);
  }

  FutureOr<void> _onStared(
    _Started event,
    Emitter<BottomNavigationState> emit,
  ) {
    emit(const BottomNavigationState.success(bottomNavigationIndex: 0));
  }

  FutureOr<void> _onBottomNavigationIndexChanged(
    _BottomNavigationIndexChanged event,
    Emitter<BottomNavigationState> emit,
  ) {
    emit(BottomNavigationState.success(bottomNavigationIndex: event.index));
  }
}
