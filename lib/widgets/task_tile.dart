// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, non_constant_identifier_names, prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  late final String name;
  bool isChecked = false;
  late final ChechkBoxState;
  late final DeleteTask;
  TaskTile(
      {required this.name,
      required this.isChecked,
      required this.ChechkBoxState,
      required this.DeleteTask
      });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        name,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        checkColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: ChechkBoxState,
      ),
      onLongPress: DeleteTask
    );
  }
}
