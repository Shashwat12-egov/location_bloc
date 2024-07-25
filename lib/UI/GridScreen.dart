import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:location/bloc/alter/alter_response_bloc.dart';

class GridScreen extends StatefulWidget {
  const GridScreen({super.key});

  
  @override
  State<GridScreen> createState() => _GridScreenState();
}

class _GridScreenState extends State<GridScreen> {
  // ignore: prefer_typing_uninitialized_variables
  var keys,values;
  @override
  void initState() {
    super.initState();
     final provider = context.read<AlterLocationBloc>().state;
     var data=provider.response;
     keys=["City","Longitude","Latitude","Temperature","Feels Like", "Minimum Temperature","Maximum Temperature","Humidity","Wind Speed"];
     values=[data['name'],data['coord']?['lon'],data['coord']?['lat'],data['main']?['temp'],data['main']?['feels_like'],data['main']?['temp_min'],data['main']?['temp_max'],data['main']?['humidity'],data['wind']?['speed']];
    
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Center(
            child: Wrap(
              spacing: 16.0,
              runSpacing: 16.0,
              children: keys.asMap().entries.map<Widget>((entry) {
                int index = entry.key;
                return SizedBox(
                  width: 400, // Fixed width for each card
                  height: 150, // Fixed height for each card
                  child: Card(
                  color: Colors.black,
                  shadowColor: Colors.red,
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child:Center(child: Text("${keys[index]}: ${values[index]}",style: const TextStyle(fontSize:20,fontWeight:FontWeight.bold,color: Colors.white,),)),
                  ));
              }).toList() as List<Widget>,),
          ),
        ));
  }
}