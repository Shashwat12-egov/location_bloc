import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'showlocation_event.dart';
part 'showlocation_state.dart';

class ShowlocationBloc extends Bloc<ShowlocationEvent, ShowlocationState> {
  ShowlocationBloc() : super(const ShowlocationState()) {
    on<Minimizeicon>((event,emit){
      emit(ShowlocationState(isMinimized: !state.isMinimized));
    });
  }
}