import '../models/data_layer.dart';
import 'package:flutter/material.dart';
import '/provider/plan_provider.dart';


class PlanScreen extends StatefulWidget {
  const PlanScreen({super.key});

  @override
  State createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  // Plan plan = const Plan();  // Langkah 4: hapus deklarasi plan karena akan pakai PlanProvider

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
    // Langkah 8: ambil Plan dari PlanProvider untuk progress
    Plan plan = PlanProvider.of(context).value;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Master Plan Aqila'),
        backgroundColor: Colors.purple,
      ),
      // Langkah 9: tambah widget SafeArea
      body: ValueListenableBuilder<Plan>(
      valueListenable: PlanProvider.of(context),
      builder: (context, plan, child) {
        return Column(
          children: [
            Expanded(
              child: _buildList(plan),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  plan.completenessMessage,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        );
      },
    ),
      floatingActionButton: _buildAddTaskButton(context), // pastikan context dikirim
    );
  }


  // Langkah 7: tombol tambah task
  Widget _buildAddTaskButton(BuildContext context) {
    // Langkah 5: ambil Plan dari PlanProvider
    ValueNotifier<Plan> planNotifier = PlanProvider.of(context);

    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {
        // Langkah 5: update Plan melalui PlanProvider
        Plan currentPlan = planNotifier.value;
        planNotifier.value = Plan(
          name: currentPlan.name,
          tasks: List<Task>.from(currentPlan.tasks)..add(const Task()),
        );
      },
    );
  }


  // Langkah 7: sesuaikan parameter pada bagian _buildTaskTile
  Widget _buildList(Plan plan) {
    return ListView.builder(
      controller: scrollController,
      itemCount: plan.tasks.length,
      itemBuilder: (context, index) =>
          _buildTaskTile(plan.tasks[index], index, context),
    );
  }

  // Langkah 6: tambahkan parameter BuildContext, gunakan PlanProvider sebagai sumber data
  Widget _buildTaskTile(Task task, int index, BuildContext context) {
    ValueNotifier<Plan> planNotifier = PlanProvider.of(context);
    return ListTile(
      leading: Checkbox(
        value: task.complete,
        onChanged: (selected) {
          Plan currentPlan = planNotifier.value;
          planNotifier.value = Plan(
            name: currentPlan.name,
            tasks: List<Task>.from(currentPlan.tasks)
              ..[index] = Task(
                description: task.description,
                complete: selected ?? false,
              ),
          );
        }),
      title: TextFormField(
        initialValue: task.description,
        onChanged: (text) {
          Plan currentPlan = planNotifier.value;
          planNotifier.value = Plan(
            name: currentPlan.name,
            tasks: List<Task>.from(currentPlan.tasks)
              ..[index] = Task(
                description: text,
                complete: task.complete,
              ),
          );
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
