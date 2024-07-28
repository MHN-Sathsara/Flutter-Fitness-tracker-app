import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('User123'),
            accountEmail: const Text('hello@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'assets/img/proIcon.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: NetworkImage(
                  'https://images.unsplash.com/photo-1434494878577-86c23bcb06b9?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.people),
            title: Text('My Profile'),
          ),
          const ListTile(
            leading: Icon(Icons.book),
            title: Text('Schedules'),
          ),
          const ListTile(
            leading: Icon(Icons.history),
            title: Text('Histoy'),
          ),
          const ListTile(
            leading: Icon(Icons.settings),
            title: Text('App Settings'),
          ),
        ],
      ),
    );
  }
}
