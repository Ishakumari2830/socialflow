import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class PeopleScreen extends StatelessWidget {
  final List<Map<String, String>> people = [
    {'name': 'Alice', 'image': 'https://via.placeholder.com/150', 'location': 'New York'},
    {'name': 'Bob', 'image': 'https://via.placeholder.com/150', 'location': 'California'},
    {'name': 'Charlie', 'image': 'https://via.placeholder.com/150', 'location': 'London'},
    {'name': 'Isha', 'image': 'https://via.placeholder.com/150', 'location': 'Mumbai'},
    {'name': 'Ishika', 'image': 'https://via.placeholder.com/150', 'location': 'Delhi'},
    {'name': 'Ankur', 'image': 'https://via.placeholder.com/150', 'location': 'Bangalore'},
    {'name': 'Viper', 'image': 'https://via.placeholder.com/150', 'location': 'Paris'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("People Screen"),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: people.length,
          itemBuilder: (context, index) {
            final person = people[index];
            return ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(person['image']!),
              ),
              title: Text(
                person['name']!,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              subtitle: Text(
                person['location']!,
                style: TextStyle(color: Colors.grey[600]),
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 8.0),
              onTap: () {
                // Handle the onTap if needed
              },
            );
          },
        ),
      ),
    );
  }
}
