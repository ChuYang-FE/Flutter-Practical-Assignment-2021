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
      child: SizedBox(
        height: 200,
        child: Card(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
                    height: 25,
                ),
                subtitle: Container(
                  margin: EdgeInsets.only(top: 10),
                  color: Colors.pink,
                  height: 25,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
