// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors, non_constant_identifier_names, override_on_non_overriding_member, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:todoey_flutter/modules/all_task.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
class TaskList extends StatelessWidget {
  
  
  @override
  Widget build(BuildContext context) {
    return Consumer<AllTask>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
            final task=taskData.alltask[index];
          return TaskTile(
              name:task.name,
              isChecked: task.isDone,
              ChechkBoxState: (newvalue) {
               taskData.checkTask(task);
              },
              DeleteTask: (){
                taskData.deleteTask(task);
              },
              );
        },
        itemCount:taskData.getTaskLength(),
      );
    },
      
    );
  }
}
