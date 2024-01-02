import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:points_app/cubit/counter_states.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(InitialState());

  int teamAPoints = 0;
  int teamBPoints = 0;

  void incrementPoints({required String team, required int pointsCount}) {
    if (team == 'A') {
      teamAPoints += pointsCount;
      emit(IncrementTeamAPointsState());
    } else {
      teamBPoints += pointsCount;
      emit(IncrementTeamBPointsState());
    }
  }

  void resetPoints() {
    teamAPoints = 0;
    teamBPoints = 0;
    emit(ResetPointsState());
  }
}
