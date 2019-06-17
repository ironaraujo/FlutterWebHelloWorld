import 'package:bloc_pattern/bloc_pattern.dart';

class HelloBloc extends BlocBase {
  double value = 0.0;

  incrementValue() {
    value+=1;
    notifyListeners();
  }
}
