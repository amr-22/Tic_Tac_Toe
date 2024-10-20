import 'package:flutter/material.dart';

class CounterView extends StatefulWidget {
  const CounterView({super.key});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  int max_count = 10;
  int min_count = 0;
  int count = 5;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        IconButton(
            onPressed: () {
              setState(() {
                if (count > min_count) {
                  count--;
                }
              });
            },
            icon: Icon(Icons.arrow_left)),
        Container(
          child: Text(count.toString()),
        ),
        IconButton(
            onPressed: () {
              setState(() {
                if (count < max_count) {
                  count++;
                }
              });
            },
            icon: Icon(Icons.arrow_right)),
      ]),
    );
  }
}
