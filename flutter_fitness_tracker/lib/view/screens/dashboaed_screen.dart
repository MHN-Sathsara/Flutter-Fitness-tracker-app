import 'package:flutter/material.dart';
import 'package:flutter_fitness_tracker/view/screens/addnewform.dart';
import 'package:flutter_fitness_tracker/view/screens/cards.dart';
import 'package:flutter_fitness_tracker/view/screens/sidebar.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Sidebar(),
      appBar: AppBar(
        title: const Text('Your Dashboard'),
        // backgroundColor: const Color.fromARGB(255, 33, 243, 163),
      ),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 100,
            padding: const EdgeInsets.fromLTRB(30, 60, 10, 0),
            //color: Colors.red,
            child: const Text(
              'Welcome!',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 30),
            ),
          ),
          Container(
            width: double.infinity,
            height: 50,
            padding: const EdgeInsets.fromLTRB(30, 10, 10, 10),
            //color: Colors.blue,
            child: const Text(
              'Here is your plan for today.',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 20),
            ),
          ),
          const Flexible(
            child: Cardssheet(),
          ),
        ],
      ),
      floatingActionButton: Builder(builder: (BuildContext context) {
        return FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AddWorkoutForm()));
          },
          backgroundColor: Colors.grey,
          label: const Text(
            'New',
            style: TextStyle(color: Colors.white),
          ),
          icon: const Icon(Icons.add),
        );
      }),
      //bottomNavigationBar: const BottomNavigationPage(),
    );
  }
}
