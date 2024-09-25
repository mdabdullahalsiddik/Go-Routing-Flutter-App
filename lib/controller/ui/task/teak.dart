import 'package:get/get.dart';

class TaskController extends GetxController {
  // A simple list of tasks with dummy data for now
  var tasks = <Map<String, String>>[
    {"id": "1", "title": "Office Redecoration", "customer": "Diadson"},
    {"id": "2", "title": "Office Expansion", "customer": "Critafer Nonal"}
  ].obs;

  // Method to add a task
  void addTask(String title, String customer) {
    final newTask = {
      "id": (tasks.length + 1).toString(),
      "title": title,
      "customer": customer
    };
    tasks.add(newTask);
  }

  // Method to fetch task by ID
  Map<String, String>? getTaskById(String id) {
    return tasks.firstWhereOrNull((task) => task['id'] == id);
  }
}
