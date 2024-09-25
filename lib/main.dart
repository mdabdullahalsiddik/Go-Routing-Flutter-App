import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_routhig_todo_app/controller/ui/task/teak.dart';
import 'package:go_routhig_todo_app/routing/routing.dart';

void main() {
  Get.put(TaskController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter To-Do App',
      debugShowCheckedModeBanner: false,
      routerConfig: RoutingConfig().router,
    );
  }
}
