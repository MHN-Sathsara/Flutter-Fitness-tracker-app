import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: ItemListPage(),
  ));
}

class ItemListPage extends StatelessWidget {
  const ItemListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Upcoming Workouts'),
      ),
      body: ListView(
        children: List.generate(
          4,
          (index) => ListTile(
            leading: const Icon(Icons.star),
            title: Text('Workout ${index + 1}'),
            subtitle: Text('Description for Workout ${index + 1}'),
          ),
        ),
      ),
    );
  }
}
