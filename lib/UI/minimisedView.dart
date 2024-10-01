import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:location/bloc/showLocation/showlocation_bloc.dart';

class MinimizedView extends StatelessWidget {
  const MinimizedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 199, 199, 214),
      child: ListTile(
        // minTileHeight: 80,
        title: const Text("Search",style: TextStyle(fontSize:20, fontWeight: FontWeight.bold),),
        trailing: ElevatedButton(
          onPressed: () { context.read <ShowlocationBloc>().add(Minimizeicon());},
          child: const Icon(Icons.expand_more),
          
        ),
      )
      );
  }
}
  