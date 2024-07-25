part of 'filterelocation_bloc.dart';

sealed class FilterelocationEvent extends Equatable {
  const FilterelocationEvent();

  @override
  List<Object> get props => [];
}

class FilterLocations extends FilterelocationEvent {
  final String query;

  const FilterLocations(this.query);

  @override
  List<Object> get props => [query];
}