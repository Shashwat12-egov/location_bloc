part of 'showlocation_bloc.dart';

class ShowlocationState extends Equatable {
  final bool isMinimized;

  const ShowlocationState({this.isMinimized = true});
  @override
  List<Object> get props => [isMinimized];
}
