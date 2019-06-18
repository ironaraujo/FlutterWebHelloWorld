import 'package:DartWebHelloWorld/Hello/HelloBloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter_web/material.dart';

import 'Hello/HelloScreen.dart';
import 'Main/MainBloc.dart';
import 'Main/MainScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      child: MaterialApp(
          title: 'Fluter First Example',
          home: HelloScreen(),
          routes: <String, WidgetBuilder>{
            '/screen1': (BuildContext context) => HelloScreen(),
            '/screen2': (BuildContext context) => MainScreen(),
          }),
      blocs: [Bloc((i) => HelloBloc()), Bloc((i) => MainBloc())],
    );
  }
}
