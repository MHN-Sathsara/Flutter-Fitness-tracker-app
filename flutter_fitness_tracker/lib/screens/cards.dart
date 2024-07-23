import 'package:flutter/material.dart';
import 'package:flutter_fitness_tracker/screens/upcominglist.dart';

class Cardssheet extends StatelessWidget {
  const Cardssheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // First card
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ItemListPage()),
              );
            },
            child: SizedBox(
              width: 355,
              height: 300,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/img/proCover.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Positioned.fill(
                    child: Align(
                      alignment: Alignment.center,
                      child: Card(
                        color: Colors.transparent,
                        elevation: 8,
                        margin: EdgeInsets.all(32),
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                            'Upcoming Workouts',
                            style: TextStyle(fontSize: 35, color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          // Second card
          SizedBox(
            width: 355,
            height: 200,
            child: Stack(
              fit: StackFit.expand,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/img/2.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                const Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: Card(
                      color: Colors.transparent,
                      elevation: 8,
                      margin: EdgeInsets.fromLTRB(35, 0, 35, 0),
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Progress: 6/10',
                          style: TextStyle(fontSize: 35, color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
