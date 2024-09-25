import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_routhig_todo_app/controller/ui/task/teak.dart';

class AddTaskScreen extends StatelessWidget {
  final TaskController controller = Get.find<TaskController>();

  final TextEditingController titleController = TextEditingController();
  final TextEditingController customerController = TextEditingController();

  AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Task'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(labelText: 'Task Title'),
            ),
            TextField(
              controller: customerController,
              decoration: const InputDecoration(labelText: 'Customer Name'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add task to controller
                controller.addTask(
                  titleController.text,
                  customerController.text,
                );
              },
              child: const Text('Add Task'),
            ),
          ],
        ),
      ),
    );
  }
}
