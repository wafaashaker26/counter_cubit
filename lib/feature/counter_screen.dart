import 'package:basketball_counter/feature/cubit/counter_cubit.dart';
import 'package:basketball_counter/feature/widgets/button_widget.dart';
import 'package:basketball_counter/feature/widgets/column_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: BlocBuilder<CounterCubit, CounterState>(
        builder: (context, state) {
          final cubit=BlocProvider.of<CounterCubit>(context);
          return Scaffold(
            appBar: AppBar(
              title: Text("Points Counter", style: TextStyle(color: Colors.white)),
              backgroundColor: Color(0xffff9900),
            ),
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                spacing: 50,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ColumnWidget(nameTeam: "A"),
                      Container(
                        height: MediaQuery.of(context).size.height * .5,
                        width: 2,
                        color: Colors.black,
                      ),
                      ColumnWidget(nameTeam: "B"),
                    ],
                  ),
                  ButtonWidget(title: "Reset", onPressed: () {
                    cubit.resetScore();
                  }),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
