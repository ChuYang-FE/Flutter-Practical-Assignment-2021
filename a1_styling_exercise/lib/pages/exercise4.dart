import 'package:flutter/material.dart';

class Exercise4 extends StatelessWidget {
  static final title = 'Exercise 4';
  static final routeName = '/exercise4';

  const Exercise4({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: myExercise4(),
    );
  }
}

class myExercise4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        height: 200,
        margin: EdgeInsets.only(left: 20, right: 20),
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListTile(
                leading: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.green,
                ),
                title: Container(
                  color: Colors.pink,
                  width: 20.0, // 不生效？？
                  height: 30,
                ),
                subtitle: Container(
                  margin: EdgeInsets.only(top: 10),
                  width: 100, // 不生效？？
                  color: Colors.pink,
                  height: 30,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
