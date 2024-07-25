import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:location/bloc/alter/alter_response_bloc.dart';
import 'package:location/bloc/filter/filterelocation_bloc.dart';
import 'package:location/bloc/showLocation/showlocation_bloc.dart';
import 'package:location/utils/app_router.dart';
// Import the generated router

void main() async {
    try {
    await dotenv.load(fileName: ".env");
    print('.env file loaded successfully');
  } catch (e) {
    print("Failed to load .env file: $e");
  }

  runApp(LocationApp());
}

// ignore: must_be_immutable
class LocationApp extends StatelessWidget {
  List<String> locations = [
    'Delhi-India',
    'Mumbai-India',
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
  ];
  LocationApp({super.key});
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ShowlocationBloc(),
        ),
        BlocProvider(
          create: (context) => FilterelocationBloc(allLocations: locations),
        ),
        BlocProvider(
          create: (context) => AlterLocationBloc(),
        ),
      ],
      child:MaterialApp.router(
        routerConfig: _appRouter.config(),
        debugShowCheckedModeBanner: false,
      ),);
}}