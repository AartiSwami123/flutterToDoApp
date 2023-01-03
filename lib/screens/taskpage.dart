import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/homepage.dart';
import 'package:flutter_application_1/widgets.dart';

class Taskpage extends StatefulWidget {
  @override
  _TaskpageState createState() => _TaskpageState();
}

class _TaskpageState extends State<Taskpage> {
  appBar() => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.symmetric(
                vertical: 24.0,
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 24.0,
                  bottom: 6.0,
                ),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: BackButton(),
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter task title ',
                          border: InputBorder.none,
                        ),
                        style: TextStyle(
                            fontSize: 26.0,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 51, 153, 126)),
                      ),
                    ),
                  ],
                ),
              )),
          Padding(
            padding: EdgeInsets.only(
              bottom: 12.0,
            ),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "your detailed work plan... ",
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 24.0,
                  )),
            ),
          ),
          Todowidget(
            text: "create your first task. ",
            isDone: false,
          ),
          Todowidget(
            text: "create your task. ",
            isDone: false,
          ),
          Todowidget(
            isDone: true,
          ),
          Todowidget(
            isDone: true,
          ),
          Todowidget(
            isDone: true,
          ),
          Todowidget(
            isDone: true,
          ),
        ],
      ),
    )));
  }
}
