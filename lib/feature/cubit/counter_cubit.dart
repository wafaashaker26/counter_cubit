import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  int scoreA = 0, scoreB = 0;

  void increaseScore({required String nameTeam, required int point}) {
    if (nameTeam == 'A') {
      scoreA += point;
    } else {
      scoreB += point;
    }
    emit(CounterIncreaseScore());
  }

  void resetScore() {
    scoreA = 0;
    scoreB = 0;
    emit(ResetCounter());
  }
}
