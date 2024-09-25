import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_routhig_todo_app/controller/ui/task/teak.dart';

class TaskDetailsScreen extends StatelessWidget {
  final String taskId;
  TaskDetailsScreen({required this.taskId});

  final TaskController controller = Get.find<TaskController>();

  @override
  Widget build(BuildContext context) {
    final task = controller.getTaskById(taskId);

    if (task == null) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Task Details'),
        ),
        body: Center(
          child: Text('Task not found'),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Task Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Title: ${task['title']}', style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text('Customer: ${task['customer']}', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
