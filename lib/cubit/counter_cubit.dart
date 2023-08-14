import 'package:bloc/bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() {
    if (state < 10) {
      emit(state + 1);
    } else {
      Fluttertoast.showToast(
        msg: "¡Límite máximo alcanzado!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
      );
    }
  }

  void decrement() {
    if (state > 0) {
      emit(state - 1);
    } else {
      Fluttertoast.showToast(
        msg: "¡Límite mínimo alcanzado!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
      );
    }
  }

  void reinicio() => emit(0);
}
