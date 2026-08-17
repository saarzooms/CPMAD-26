import 'package:get/get.dart';

import '../models/task.dart';

class TodoController extends GetxController{
  RxList<Task> tasks = RxList.empty();
  void addTask(String title){
    tasks.add(Task(title, false));
  }
}