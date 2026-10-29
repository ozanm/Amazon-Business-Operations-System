import 'package:flutter/material.dart';
import '../../../core/constants/operations_modules.dart';
import '../../../core/models/operations_module.dart';
import '../../../shared/screens/module_placeholder_screen.dart';
import '../widgets/module_card.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Business Operations')),
      drawer: Drawer(
        child: SafeArea(
          child: ListView(
            children: [
              const ListTile(
                title: Text('Operations', style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text('Select a module'),
              ),
              const Divider(),
              for (final module in modules)
                ListTile(
                  leading: Icon(module.icon),
                  title: Text(module.title),
                  onTap: () {
                    Navigator.pop(context);
                    _openModule(context, module);
                  },
                ),
            ],
          ),
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final columns = constraints.maxWidth >= 1000
              ? 3
              : constraints.maxWidth >= 600
                  ? 2
                  : 1;
          return ListView(
            padding: const EdgeInsets.all(20),
            children: [
              const Text('Operations Dashboard',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const Text('Select a business area to explore its tools and workflows.'),
              const SizedBox(height: 24),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: modules.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: columns,
                  mainAxisExtent: 180,
                  crossAxisSpacing: 14,
                  mainAxisSpacing: 14,
                ),
                itemBuilder: (context, index) {
                  final module = modules[index];
                  return ModuleCard(
                    module: module,
                    onTap: () => _openModule(context, module),
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }

  void _openModule(BuildContext context, OperationsModule module) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => ModulePlaceholderScreen(module: module)),
    );
  }
}

