part of 'alter_response_bloc.dart';

class AlterLocationState extends Equatable {
  final String currcity,currstate;
  final response;
  const AlterLocationState({this.currcity="Delhi",this.currstate="India",this.response=""});
  
  @override
  List<Object> get props => [currcity,currstate,response];
}
