import 'package:flutter/material.dart';
import '/views/plan_screen.dart';
import '/models/plan.dart'; // pastikan import Plan
import '/provider/plan_provider.dart'; // pastikan import PlanProvider

void main() => runApp(MasterPlanApp());

class MasterPlanApp extends StatelessWidget {
  const MasterPlanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple),
      // Langkah 2 : gantilah pada bagian atribut home dengan PlanProvider
      home: PlanProvider(
        notifier: ValueNotifier<Plan>(const Plan()),
        child: const PlanScreen(),
      ),
    );
  }
}
