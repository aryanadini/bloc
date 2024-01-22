import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'mycounter_bloc.dart';
void main() {
  runApp(BlocProvider(create: (context) => MycounterBloc(),
  child: MyApp(),
  ),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  Scaffold(
        body: Center(
          child: BlocBuilder<MycounterBloc,MycounterState>(
            builder: (context, state) {
              return Text('my count is ${state.count} ');
            },
          ),

        ),

        floatingActionButton: SizedBox(
          child: FloatingActionButton(onPressed: () {
            context.read<MycounterBloc>().add(clicked());
          },
            child: Icon(Icons.add),),
        ),

      ),


    );
    
  }
}
