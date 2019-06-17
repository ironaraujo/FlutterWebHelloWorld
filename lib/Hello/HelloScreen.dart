import 'package:DartWebHelloWorld/Hello/HelloBloc.dart';
import 'package:flutter_web/material.dart';
import 'package:bloc_pattern/bloc_pattern.dart';

class HelloScreen extends StatefulWidget {
  @override
  _HelloScreenState createState() => _HelloScreenState();
}

class _HelloScreenState extends State<HelloScreen> {
  final HelloBloc bloc = BlocProvider.getBloc<HelloBloc>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Teste"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hello, World Testing!',
            ),
            RaisedButton(
                child: Text("Inscrement!"), onPressed: bloc.incrementValue),
            Consumer<HelloBloc>(
              builder: (BuildContext context, HelloBloc bloc) {
                return Text("${bloc.value}");
              },
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
    ;
  }
}
