import 'package:basketball_counter/feature/cubit/counter_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'button_widget.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key, required this.nameTeam});

  final String nameTeam;

  @override
  Widget build(BuildContext context) {
    final cubit=BlocProvider.of<CounterCubit>(context);
    int score=(nameTeam=="A")?cubit.scoreA:cubit.scoreB;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      spacing: 7,
      children: [
        Text("Team $nameTeam", style: TextStyle(fontSize: 25)),
        SizedBox(height: 15),
        Text("$score", style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700)),
        SizedBox(height: 15),
        ButtonWidget(title: "Add 1 point", onPressed: () {cubit.increaseScore(nameTeam: nameTeam, point: 1);}),
        SizedBox(height: 5),
        ButtonWidget(title: "Add 2 point", onPressed: () {cubit.increaseScore(nameTeam: nameTeam, point: 2);}),
        SizedBox(height: 5),
        ButtonWidget(title: "Add 3 point", onPressed: () {cubit.increaseScore(nameTeam: nameTeam, point: 3);}),
        SizedBox(height: 5),
      ],
    );
  }
}
