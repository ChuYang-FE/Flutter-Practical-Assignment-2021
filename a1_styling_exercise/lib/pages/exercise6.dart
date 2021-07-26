import 'package:flutter/material.dart';

class Exercise6 extends StatelessWidget {
  static final title = 'Exercise 6';
  static final routeName = '/exercise6';

  const Exercise6({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: myExercise6(),
    );
  }
}

class myExercise6 extends StatelessWidget {
  final List<Widget> bottomBoxes = List.generate(
    4,
    (index) => Container(
      width: 50,
      height: 50,
      color: Colors.blueAccent,
    ),
  );

  final List<Widget> listViewItems = List.generate(
    20,
    (index) => Card(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListTile(
              leading: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.green,
                child: Text(index.toString()),
              ),
              title: Container(
                color: Colors.pink,
                height: 25,
              ),
              subtitle: Container(
                margin: EdgeInsets.only(top: 10),
                color: Colors.pink,
                height: 25,
              ),
            ),
          ),
        ],
      ),
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
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  color: Colors.yellow,
                ),
                Container(
                  width: 40,
                  height: 40,
                  color: Colors.yellow,
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: ListView(
            children: listViewItems,
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
