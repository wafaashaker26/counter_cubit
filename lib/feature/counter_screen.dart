import 'package:basketball_counter/feature/widgets/button_widget.dart';
import 'package:basketball_counter/feature/widgets/column_widget.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int teamAScore = 0;
  int teamBScore = 0;

  @override
  Widget build(BuildContext context) {
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
                ColumnWidget(teamName: "A"),
                Container(
                  height: MediaQuery.of(context).size.height * .5,
                  width: 2,
                  color: Colors.black,
                ),
                ColumnWidget(teamName: "B"),
              ],
            ),
            ButtonWidget(title: "Reset", onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
