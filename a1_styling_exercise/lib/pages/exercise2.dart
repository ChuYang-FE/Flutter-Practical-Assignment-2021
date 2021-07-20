import 'package:flutter/material.dart';

class Exercise2 extends StatelessWidget {
  static final title = 'Exercise 2';
  static final routeName = '/exercise2';

  const Exercise2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: myExercise2(),
    );
  }
}

class myExercise2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Flex(
        direction: Axis.vertical,
        verticalDirection: VerticalDirection.up, // exercise2
        children: [
          Expanded(
            child: Container(color: Colors.green),
          ),
          Expanded(
            flex: 2, // exercise2
            child: Container(color: Colors.yellow),
          ),
          Expanded(
            child: Container(color: Colors.pink),
          ),
        ],
      ),
    );
  }
}
