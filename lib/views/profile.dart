
import 'package:flutter/material.dart';

import '../login/signIn.dart';



class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                // Top Section with Purple Background
                Container(
                  color: Colors.purple.shade400,
                  height: 130,
                  width: double.infinity,
                ),
                // Spacer for the avatar
                SizedBox(height: 60),
                // Profile Details Section
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'John Doe', // Name
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '@johndoe', // Username
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 20),
                      // Edit Profile Button
                      Center(
                        child: OutlinedButton.icon(
                          onPressed: () {
                            // Edit profile action
                          },
                          icon: Icon(Icons.edit, color: Colors.purple),
                          label: Text(
                            'Edit Profile',
                            style: TextStyle(color: Colors.purple),
                          ),
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Colors.purple),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                // Options List
                ListTile(
                  leading: Icon(Icons.location_on, color: Colors.purple),
                  title: Text('Address'),
                  subtitle: Text('123, Street Name, City, Country'),
                  onTap: () {
                    // Navigate to Address screen
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.people, color: Colors.purple),
                  title: Text('Friends'),
                  subtitle: Text('View all friends'),
                  onTap: () {
                    // Navigate to Friends list
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.settings, color: Colors.purple),
                  title: Text('Settings'),
                  onTap: () {
                    // Navigate to Settings
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.logout, color: Colors.red),
                  title: Text('Logout'),
                  onTap: () {
                    // Logout action
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                  },
                ),
              ],
            ),
            // Profile Avatar Positioned on the White and Purple Section
            Positioned(
              top: 90, // Half on purple, half on white
              left: 16,
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                  'https://via.placeholder.com/150', // Replace with a valid image URL
                ),
              ),
            ),
            // Settings Icon Positioned in Top-Right Corner
            Positioned(
              top: 16,
              right: 16,
              child: IconButton(
                icon: Icon(Icons.settings, color: Colors.white),
                onPressed: () {
                  // Navigate to settings
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}