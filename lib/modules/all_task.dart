// ignore_for_file: prefer_final_fields

import 'package:flutter/widgets.dart';
import 'tasks.dart';
import 'dart:collection';
class AllTask extends ChangeNotifier{
     List<Task> _alltask=[
      Task(name: 'Buy Milk'),
    Task(name: 'Go gym'),
    Task(name: 'Do nothing')
     ];
     UnmodifiableListView<Task> get alltask{
      return UnmodifiableListView(_alltask);
     }
     int getTaskLength(){
      return _alltask.length;
     }
     void addNewtask(String newTask)
     {
          _alltask.add(Task(name: newTask));
          notifyListeners();
     }
     void checkTask(Task task){
      task.toggleisDone();
      notifyListeners();
     }
     void deleteTask(Task task)
     {
      _alltask.remove(task);
      notifyListeners();
     }
}