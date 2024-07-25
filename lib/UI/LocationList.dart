import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:location/bloc/filter/filterelocation_bloc.dart';
import 'package:location/utils/app_router.gr.dart';

class LocationList extends StatelessWidget {
  const LocationList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder <FilterelocationBloc,FilterelocationState>(
      buildWhen: (previous,current)=> previous.filteredLocations!=current.filteredLocations,
        builder: (context, state) {
      return Expanded(
            child:ListView.builder(
              itemCount:state.filteredLocations.length,
              itemBuilder: (context, index) {
                return Card(
                  color: const Color.fromARGB(255, 14, 14, 14),
                  // elevation: 5.0,
                  // shadowColor: Colors.grey,
                  child: ListTile(
                    title: Text(state.filteredLocations[index],style: const TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(255, 253, 252, 252)),),
                    trailing: ElevatedButton(
                      onPressed: () { 
                        AutoRouter.of(context).push(WeatherRoute(currentLocation: state.filteredLocations[index]));
                      // Navigator.pushNamed(context,RouteName.weaterreport,arguments: {'current_location':state.filteredLocations[index]});
                     },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: const Color.fromARGB(255, 255, 254, 254),
                      backgroundColor: const Color.fromARGB(255, 4, 4, 4),
                      shadowColor: const Color.fromARGB(255, 130, 7, 7), // Shadow color
                      elevation: 5.0, // Elevation
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                      child:const Icon(Icons.info),),
                  ),
                );
              }, 
            
          ) ,
          );}
    ) ;
      }
    
  }