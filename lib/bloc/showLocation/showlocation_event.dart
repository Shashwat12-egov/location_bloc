part of 'showlocation_bloc.dart';

sealed class ShowlocationEvent extends Equatable {
  const ShowlocationEvent();

  @override
  List<Object> get props => [];
}

class Minimizeicon extends ShowlocationEvent {}
