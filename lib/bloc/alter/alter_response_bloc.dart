import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'alter_response_event.dart';
part 'alter_response_state.dart';

class AlterLocationBloc extends Bloc<AlterLocationEvent, AlterLocationState> {
  AlterLocationBloc() : super(const AlterLocationState()) {
    on<Alterresponse>(_alterresponse);
  }
  
  void _alterresponse(Alterresponse event, Emitter<AlterLocationState> emit) {
      emit(AlterLocationState(currcity: state.currcity, currstate: state.currstate,response: event.curr_response));
  }
}
