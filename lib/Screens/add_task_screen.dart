// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, unused_import, prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:todoey_flutter/modules/tasks.dart';
import 'package:todoey_flutter/widgets/task_list.dart';
import 'task_screen.dart';

class AddTask extends StatelessWidget {
  final addTaskCallBack;
  late String newTaskTitle;
  AddTask({required this.addTaskCallBack});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Add Task',
                style: TextStyle(fontSize: 35, color: Colors.lightBlueAccent),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: TextField(
                  onChanged: (value) {
                    newTaskTitle = value;
                  },
                  autofocus: true,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 45),
                child: Container(
                  width: double.infinity,
                  color: Colors.lightBlueAccent,
                  child: TextButton(
                    onPressed: () {
                      addTaskCallBack(newTaskTitle);
                    },
                    child: Text(
                      'ADD',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
