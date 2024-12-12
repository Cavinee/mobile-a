import 'package:flutter/material.dart';
import 'package:pertemuan5/model/Task.dart';
import 'package:provider/provider.dart';

class ToDoList extends StatefulWidget {
  const ToDoList({super.key});

  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  final nameController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("To-Do List")
      ),
      body: Consumer<Task>(
        builder: (context, taskProvider, child) {
          return ListView.builder(
            itemCount: taskProvider.tasks.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Checkbox(
                  value: taskProvider.tasks[index][1],
                  onChanged: (value) {
                    taskProvider.changeStatus(index);
                  },
                ),
                title: (taskProvider.tasks[index][1]) ? 
                Text(
                  taskProvider.tasks[index][0], 
                  style: const TextStyle(
                    decoration: TextDecoration.lineThrough, 
                    color: Colors.grey
                  )) : Text(taskProvider.tasks[index][0]),
                trailing: IconButton(
                  onPressed: () {
                    taskProvider.removeTask(index);
                  }, 
                  icon: const Icon(Icons.remove_circle_outline_outlined)
                )
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () async {
          return showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text("Add New Task"),
                content: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)
                    )
                  )
                ),
                actions: [
                  ElevatedButton(
                    child: const Text("Submit"),
                    onPressed: () {
                      Provider.of<Task>(context, listen: false).addTask(nameController.text);
                      nameController.clear();
                      Navigator.pop(context);
                    }
                  )
                ],
              );
            },
          );
        }
      ),
    );
  }
}