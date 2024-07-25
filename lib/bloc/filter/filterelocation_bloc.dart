import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'filterelocation_event.dart';
part 'filterelocation_state.dart';

class FilterelocationBloc extends Bloc<FilterelocationEvent, FilterelocationState> {
  final List<String> allLocations;

  FilterelocationBloc({required this.allLocations}) : super(const FilterelocationState()) {
    on<FilterLocations>(_onFilterLocations);
  }

   void _onFilterLocations(FilterLocations event, Emitter<FilterelocationState> emit) {
    final query = event.query.toLowerCase();
    final filteredLocations = allLocations
        .where((location) => location.toLowerCase().contains(query))
        .toList();
    emit(FilterelocationState(filteredLocations: filteredLocations));
  }
}

