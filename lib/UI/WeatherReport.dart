import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:location/UI/GridScreen.dart';
import 'package:location/bloc/alter/alter_response_bloc.dart';

@RoutePage()
// ignore: must_be_immutable
class WeatherScreen extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final String currentLocation;

  const WeatherScreen(this.currentLocation,{super.key});

  @override
  State<WeatherScreen> createState() => _WeatherState();
}

class _WeatherState extends State<WeatherScreen> {
   final Dio dio = Dio();
  @override
  void initState() {
    super.initState();
    final arr=widget.currentLocation.split("-");
    final currcity=arr[0].trim();
    final currstate=arr[1].trim();
    final currentState=context.read <AlterLocationBloc>();
    final apiUrl = dotenv.env['API_URL'];
    final apiKey = dotenv.env['API_KEY'];
    print(currcity);
     void fetchData() async {
        try {
          final response = await dio.get('$apiUrl/geo/1.0/direct?q=${currcity},${currstate}&limit=1&appid=$apiKey');
          final details = await dio.get('$apiUrl/data/2.5/weather?lat=${response.data[0]['lat']}&lon=${response.data[0]['lon']}&appid=$apiKey');

          if (details.statusCode == 200) {
            currentState.add(Alterresponse(details.data));
          } else {
            currentState.add(const Alterresponse('Failed to load data'));
          }
        } catch (e) {
         currentState.add(Alterresponse('Error: $e'));
        }
    }
    fetchData();
  }

  Future<void> _delayedBuild() async {
    await Future.delayed(const Duration(seconds: 1));
  }
  
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      backgroundColor: const Color.fromARGB(255, 37, 36, 36),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 9, 9, 9),
        iconTheme: const IconThemeData(
          color: Color.fromARGB(255, 254, 252, 252), // Change your color here
        ),
        title: const Center(
          child: Text('WeatherScreen Report',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),)),
      ),
      body:FutureBuilder<void>(
        future: _delayedBuild(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return const GridScreen();
          }
        },
      ),);
  }
}


