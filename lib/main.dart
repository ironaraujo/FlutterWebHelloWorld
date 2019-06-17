import 'package:DartWebHelloWorld/Hello/HelloBloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter_web/material.dart';

import 'Hello/HelloScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      child: MaterialApp(
        title: 'Fluter First Example',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HelloScreen(),
      ),
      blocs: [Bloc((i) => HelloBloc())],
    );
  }
}
