import 'package:flutter/material.dart';
import 'package:todoey/widget/add_task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class TasksList extends StatelessWidget {
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return AddTaskTile(
              longPress: () {
                taskData.deleteTask(task);
              },
              task: task.name,
              isChecked: task.isDone,
              checkBoxCallBack: (value) {
                taskData.updateTask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
