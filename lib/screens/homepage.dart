import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/taskpage.dart';
import 'package:flutter_application_1/widgets.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: 24.0,
          ),
          color: Color.fromARGB(255, 41, 46, 46),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 32.0, top: 32.0),
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        TaskCArdWidget(
                          title: "WELCOME !",
                          desc:
                              "Make your day better planned with our todo list application...",
                        ),
                        TaskCArdWidget(),
                        TaskCArdWidget(),
                        TaskCArdWidget(),
                        TaskCArdWidget(),
                        TaskCArdWidget(),
                      ],
                    ),
                  )
                ],
              ),
              Positioned(
                bottom: 20.0,
                right: 0.0,
                child: Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 241, 248, 250)),
                    child: FloatingActionButton.extended(
                      label: Text("Add Task"),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Taskpage()));
                      },
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
