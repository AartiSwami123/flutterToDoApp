import 'package:flutter/material.dart';

class TaskCArdWidget extends StatelessWidget {
  final String? title;
  final String? desc;
  TaskCArdWidget({this.title, this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(
          vertical: 32.0,
          horizontal: 24.0,
        ),
        margin: EdgeInsets.only(
          bottom: 20.0,
        ),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title ?? "Edit Task",
              style: TextStyle(
                color: Color(0xFF2115551),
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
                padding: EdgeInsets.only(
                  top: 10.0,
                ),
                child: Text(
                  desc ?? "Make your work plan...",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Color.fromARGB(255, 5, 92, 85),
                    height: 1.5,
                  ),
                ))
          ],
        ));
  }
}

class Todowidget extends StatelessWidget {
  final String? text;
  final bool? isDone;
  Todowidget({this.text, this.isDone});
  @override
  Widget build(BuildContext context) {
    var value;
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 8.0,
      ),
      child: Row(
        children: [
          Container(
              width: 20,
              height: 20,
              margin: EdgeInsets.only(
                right: 12.0,
              ),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 213, 105, 240),
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Image(
                image: AssetImage('assets/images/check.jpg'),
                height: 25,
                width: 25,
              )),
          Text(
            text ?? "unnamed task",
            style: TextStyle(
              color: Color.fromARGB(255, 213, 105, 240),
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
