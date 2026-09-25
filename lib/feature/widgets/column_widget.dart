import 'package:flutter/cupertino.dart';
import 'button_widget.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({
    super.key,
    required this.teamName,
  });

  final String teamName;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      spacing: 7,
      children: [
        Text("Team $teamName", style: TextStyle(fontSize: 25)),
        SizedBox(height: 15),
        Text(
          "0",
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700),
        ),
        SizedBox(height: 15),
        ButtonWidget(title: "Add 1 point", onPressed:(){}),
        SizedBox(height: 5),
        ButtonWidget(title: "Add 2 point", onPressed: (){}),
        SizedBox(height: 5),
        ButtonWidget(title: "Add 3 point", onPressed: (){}),
        SizedBox(height: 5),
      ],
    );
  }
}
