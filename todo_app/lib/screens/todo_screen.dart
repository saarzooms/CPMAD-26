import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/controllers/todo_controller.dart';
import 'package:todo_app/models/task.dart';

class TodoScreen extends StatelessWidget {
  TextEditingController txtTitle = TextEditingController();
  TodoController todoController = Get.put(TodoController());
  int selInd = -1;
  bool isSel = false;
  @override
  Widget build(BuildContext context) {
    log('from build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo App', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: txtTitle,
                  decoration: InputDecoration(
                    hintText: "Enter title of todo",
                    labelText: "Title",
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  print(txtTitle.text);
                  if (txtTitle.text.isNotEmpty) {
                    if (selInd == -1) {
                      // tasks.add(Task(txtTitle.text,false));
                      todoController.addTask(txtTitle.text);
                    } else {
                      // tasks[selInd].title = txtTitle.text;
                      // selInd = -1;
                    }

                    txtTitle.text = "";
                    // setState(() {});
                  }
                },
                icon: Icon(Icons.add),
              ),
            ],
          ),
          Expanded(
            child: Obx((){
              return ListView.builder(
              itemBuilder: (context, index) => ListTile(
                leading: Checkbox(
                  value: todoController.tasks[index].isCompleted,
                  onChanged: (value) {
                     todoController.tasks[index].isCompleted = value!;
                    // setState(() {});
                  },
                ),
                title: Text(todoController.tasks[index].title),
                trailing: SizedBox(
                  width: 100,
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          txtTitle.text = todoController.tasks[index].title;
                          selInd = index;
                          // setState(() {});
                        },
                        icon: Icon(Icons.edit),
                      ),
                      IconButton(
                        onPressed: () {
                          todoController.tasks.removeAt(index);
                          // setState(() {});
                        },
                        icon: Icon(Icons.delete),
                      ),
                    ],
                  ),
                ),
              ),
              itemCount: todoController.tasks.length,
            );
            })
          ),
        ],
      ),
    );
  }
}
