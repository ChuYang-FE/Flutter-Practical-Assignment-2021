import 'package:flutter/material.dart';

class Exercise3 extends StatelessWidget {
  static final title = 'Exercise 3';
  static final routeName = '/exercise3';

  const Exercise3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: myExercise3(),
    );
  }
}

class myExercise3 extends StatelessWidget {
  final List<Widget> circles = List.generate(
    4,
    (index) => Positioned(
      left: index * 70.0,
      width: 100.0,
      height: 100.0,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 5,
          ),
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 310, // 不设置具体宽度如何使内部元素居中
        child: Stack(
          children: circles,
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
