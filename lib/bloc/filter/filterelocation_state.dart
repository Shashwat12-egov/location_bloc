part of 'filterelocation_bloc.dart';

class FilterelocationState extends Equatable {
  final List<String> filteredLocations;
  const FilterelocationState({this.filteredLocations=const [
    'Delhi-India',
    'Amsterdam - Netherlands',
    'Berlin - Germany',
    'Copenhagen - Denmark',
    'Dublin - Ireland',
    'Edinburgh - Scotland',
    'Florence - Italy',
    'Geneva - Switzerland',
    'Helsinki - Finland',
    'Istanbul - Turkey',
    'Jakarta - Indonesia',
    'Kyoto - Japan',
    'Lisbon - Portugal',
    'Madrid - Spain',
    'Naples - Italy',
    'Oslo - Norway',
    'Paris - France',
    'Quebec - Canada',
    'Rome - Italy',
    'Stockholm - Sweden',
    'Tokyo - Japan',
    'Utrecht - Netherlands',
    'Vienna - Austria',
    'Warsaw - Poland',
    'Xian - China',
    'Yokohama - Japan',
    'Zurich - Switzerland',
  ]});
  
  @override
  List<Object> get props => [filteredLocations];
}
