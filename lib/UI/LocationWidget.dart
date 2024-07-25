import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:location/UI/Search.dart';
import 'package:location/UI/minimisedView.dart';
import 'package:location/bloc/showLocation/showlocation_bloc.dart';

@RoutePage()
class LocationwidgetScreen extends StatelessWidget {
  const LocationwidgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 37, 36, 36),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        title: const Center(
          child: Text('Location Widget',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),)),
      ),
      body: BlocBuilder <ShowlocationBloc,ShowlocationState>(
        buildWhen: (previous,current)=> previous.isMinimized!=current.isMinimized,
        builder: (context, state) {
          return Container(
            child: 
              state.isMinimized? const MinimizedView(): const SearchBox(),
          );
        },
      ),
    );
  }
}