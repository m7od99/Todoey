import 'package:flutter/material.dart';

class AddTaskTile extends StatelessWidget {
  AddTaskTile(
      {this.task, this.isChecked, this.checkBoxCallBack, this.longPress});
  final String task;
  final bool isChecked;
  final Function checkBoxCallBack;
  final Function longPress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPress,
      title: Text(
        task,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: checkBoxCallBack,
      ),
    );
  }
}
