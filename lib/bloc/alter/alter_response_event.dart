part of 'alter_response_bloc.dart';

sealed class AlterLocationEvent extends Equatable {
  const AlterLocationEvent();

  @override
  List<Object> get props => [];
}

class Alterresponse extends AlterLocationEvent {
 final curr_response;

  const Alterresponse(this.curr_response);

  @override
  List<Object> get props => [curr_response];
}