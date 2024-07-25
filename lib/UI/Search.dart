import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:location/UI/LocationList.dart';
import 'package:location/bloc/filter/filterelocation_bloc.dart';
import 'package:location/bloc/showLocation/showlocation_bloc.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          color: const Color.fromARGB(255, 199, 199, 214),
          child:ListTile(
            minTileHeight: 80,
            title: TextField(
                onChanged: (value) {
                  context.read <FilterelocationBloc>().add(FilterLocations(value));
                },
                decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 4, 39, 57),
                      width: 2
                    )
                  ),
                  labelText: 'Search',
                  border: OutlineInputBorder(),
                ),
              ),
            trailing: ElevatedButton(
              onPressed: () {context.read <ShowlocationBloc>().add(Minimizeicon());},
              child: const Icon(Icons.expand_less),   
            ),
          )
        ),
        const SizedBox(height: 20,),
        const LocationList()
      ],
    );
  }
}