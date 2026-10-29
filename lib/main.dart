import 'package:flutter/material.dart';

void main() => runApp(const AmazonBusinessOperationsSystemApp());

class AmazonBusinessOperationsSystemApp extends StatelessWidget {
  const AmazonBusinessOperationsSystemApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amazon Business Operations System',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF232F3E),
          primary: const Color(0xFF232F3E),
          secondary: const Color(0xFFFF9900),
        ),
        scaffoldBackgroundColor: const Color(0xFFF5F7FA),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF232F3E),
          foregroundColor: Colors.white,
        ),
      ),
      home: const DashboardScreen(),
    );
  }
}

class OperationsModule {
  final String title;
  final String description;
  final IconData icon;

  const OperationsModule(this.title, this.description, this.icon);
}

const modules = <OperationsModule>[
  OperationsModule('Billing & Payments', 'Invoices, transactions, and refunds', Icons.payments_outlined),
  OperationsModule('Customer Service', 'Tickets, agents, and escalations', Icons.support_agent),
  OperationsModule('Shipments', 'Delivery tracking and carriers', Icons.local_shipping_outlined),
  OperationsModule('Warehouse Management', 'Inventory and storage locations', Icons.warehouse_outlined),
  OperationsModule('Video Streaming', 'Content and viewing history', Icons.movie_outlined),
  OperationsModule('Audio Streaming', 'Music, albums, and playlists', Icons.library_music_outlined),
  OperationsModule('Customer Support System', 'Live chat and help articles', Icons.forum_outlined),
  OperationsModule('Product & Service Comments', 'Ratings, comments, and reports', Icons.rate_review_outlined),
  OperationsModule('Corporate Relationships', 'Offices, vendors, and partnerships', Icons.account_tree_outlined),
];

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Amazon Business Operations System')),
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
                  return Card(
                    clipBehavior: Clip.antiAlias,
                    child: InkWell(
                      onTap: () => _openModule(context, module),
                      child: Padding(
                        padding: const EdgeInsets.all(18),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(module.icon, size: 34, color: Theme.of(context).colorScheme.primary),
                            const Spacer(),
                            Text(module.title,
                                style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                            const SizedBox(height: 6),
                            Text(module.description,
                                maxLines: 2, overflow: TextOverflow.ellipsis),
                          ],
                        ),
                      ),
                    ),
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
