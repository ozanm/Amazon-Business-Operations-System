import 'package:flutter/material.dart';
import '../../core/models/operations_module.dart';

class ModulePlaceholderScreen extends StatelessWidget {
  final OperationsModule module;

  const ModulePlaceholderScreen({super.key, required this.module});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(module.title)),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(module.icon, size: 72, color: Theme.of(context).colorScheme.primary),
              const SizedBox(height: 18),
              Text(module.title,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineSmall),
              const SizedBox(height: 8),
              Text(module.description, textAlign: TextAlign.center),
              const SizedBox(height: 18),
              const Chip(label: Text('Module under development')),
              const SizedBox(height: 12),
              FilledButton.icon(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back),
                label: const Text('Back to dashboard'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
