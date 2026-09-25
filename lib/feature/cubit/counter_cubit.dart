import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  int scoreA = 0, scoreB = 0;

  Future<void> loadData()async{
    final shared =await SharedPreferences.getInstance();
    scoreA=shared.getInt('scoreA')??0;
    scoreB=shared.getInt('scoreB')??0;
    emit(CounterIncreaseScore());
  }

  Future<void>save()async{
    final prefs=await SharedPreferences.getInstance();
    prefs.setInt("scoreA", scoreA);
    prefs.setInt("scoreB", scoreB);
  }

  void increaseScore({required String nameTeam, required int point}) {
    if (nameTeam == 'A') {
      scoreA += point;
    } else {
      scoreB += point;
    }
    save();
    emit(CounterIncreaseScore());
  }

  void resetScore() {
    scoreA = 0;
    scoreB = 0;
    emit(ResetCounter());
  }
}
