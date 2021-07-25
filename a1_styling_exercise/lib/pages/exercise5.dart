import 'package:flutter/material.dart';

class Exercise5 extends StatelessWidget {
  static final title = 'Exercise 5';
  static final routeName = '/exercise5';

  const Exercise5({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: myExercise5(),
    );
  }
}

class myExercise5 extends StatelessWidget {
  final List<Widget> bottomBoxes = List.generate(
    4,
    (index) => Container(
      width: 50,
      height: 50,
      color: Colors.blueAccent,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      children: [
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.green,
            alignment: Alignment.center,
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: Colors.purple,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: Container(
            child: Flex(
              direction: Axis.horizontal,
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    child: Flex(
                      direction: Axis.vertical,
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.blue[700],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.yellow[700],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.blue[700],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.red,
                  ),
                )
              ],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.pink,
            child: Flex(
              direction: Axis.horizontal,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: bottomBoxes,
            ),
          ),
        ),
      ],
    );
  }
}
