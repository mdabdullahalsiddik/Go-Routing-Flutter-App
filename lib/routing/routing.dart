import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:go_routhig_todo_app/sceen/view/tesk/add.dart';
import 'package:go_routhig_todo_app/sceen/view/tesk/details.dart';
import 'package:go_routhig_todo_app/sceen/view/tesk/list.dart';

class RoutingConfig {
 final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => TaskListScreen(),
      ),
      GoRoute(
        path: '/add',
        builder: (context, state) => AddTaskScreen(),
      ),
      GoRoute(
        path: '/task/:id',
        builder: (context, state) {
          final taskId = state.pathParameters['id'];
          return TaskDetailsScreen(taskId: taskId!);
        },
      ),
    ],
  );
}
