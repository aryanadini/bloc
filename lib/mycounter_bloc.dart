import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'mycounter_event.dart';
part 'mycounter_state.dart';

class MycounterBloc extends Bloc<MycounterEvent, MycounterState> {
  MycounterBloc() : super(MycounterInitial(count: 0)) {
    on<clicked>((event, emit) {
    var c=state.count;
    c++;
    emit(MycounterState(count: c));
      // TODO: implement event handler
    });


  }
}
