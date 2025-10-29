import '../models/data_layer.dart';
import 'package:flutter/material.dart';

class PlanScreen extends StatefulWidget {
  const PlanScreen({super.key});

  @override
  State createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  Plan plan = const Plan();

  // Langkah 10: Tambahkan baris ini setelah variabel plan
  late ScrollController scrollController;

  // Langkah 11: Tambahkan scroll listener
  @override
  void initState() {
    super.initState();
    scrollController = ScrollController()
      ..addListener(() {
        FocusScope.of(context).requestFocus(FocusNode());
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ganti ‘Namaku' dengan nama panggilanmu
      appBar: AppBar(
        title: const Text('Master Plan Aqila'),
        //add color
        backgroundColor: Colors.purple,), // contoh nama
      body: _buildList(),
      floatingActionButton: _buildAddTaskButton(),
    );
  }

  // Langkah 7: tombol tambah task
  Widget _buildAddTaskButton() {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {
        setState(() {
          plan = Plan(
            name: plan.name,
            tasks: List<Task>.from(plan.tasks)..add(const Task()),
          );
        });
      },
    );
  }

  // Langkah 8: menampilkan daftar task
  Widget _buildList() {
    return ListView.builder(
      // Langkah 12: menampilkan kontrol scroll + keyboard behavior
      controller: scrollController, // Tambahkan controller
      keyboardDismissBehavior: Theme.of(context).platform == TargetPlatform.iOS
          ? ScrollViewKeyboardDismissBehavior.onDrag
          : ScrollViewKeyboardDismissBehavior.manual, // Tambahkan keyboard behavior
      itemCount: plan.tasks.length,
      itemBuilder: (context, index) =>
          _buildTaskTile(plan.tasks[index], index),
    );
  }

  // Langkah 9: menampilkan setiap task dalam bentuk ListTile
  Widget _buildTaskTile(Task task, int index) {
    return ListTile(
      leading: Checkbox(
        value: task.complete,
        onChanged: (selected) {
          setState(() {
            plan = Plan(
              name: plan.name,
              tasks: List<Task>.from(plan.tasks)
                ..[index] = Task(
                  description: task.description,
                  complete: selected ?? false,
                ),
            );
          });
        },
      ),
      title: TextFormField(
        initialValue: task.description,
        onChanged: (text) {
          setState(() {
            plan = Plan(
              name: plan.name,
              tasks: List<Task>.from(plan.tasks)
                ..[index] = Task(
                  description: text,
                  complete: task.complete,
                ),
            );
          });
        },
      ),
    );
  }

   // Langkah 13: membersihkan scrollController saat widget tidak digunakan lagi
  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}
