import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:go_routhig_todo_app/controller/ui/task/teak.dart';

class TaskListScreen extends StatelessWidget {
  final TaskController controller = Get.find<TaskController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task List'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => context.go('/add'), // Navigate to add task
          )
        ],
      ),
      body: Obx(() {
        return ListView.builder(
          itemCount: controller.tasks.length,
          itemBuilder: (context, index) {
            final task = controller.tasks[index];
            return ListTile(
              title: Text(task['title'] ?? ''),
              subtitle: Text('Customer: ${task['customer']}'),
              onTap: () => context.go('/task/${task['id']}'), // Navigate to task details
            );
          },
        );
      }),
    );
  }
}
