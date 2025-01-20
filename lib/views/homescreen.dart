import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, String>> _profiles = [
    {'name': 'Alice', 'image': 'https://via.placeholder.com/150'},
    {'name': 'Bob', 'image': 'https://via.placeholder.com/150'},
    {'name': 'Charlie', 'image': 'https://via.placeholder.com/150'},
    {'name': 'Isha', 'image': 'https://via.placeholder.com/150'},
    {'name': 'Ishika', 'image': 'https://via.placeholder.com/150'},
    {'name': 'Ankur', 'image': 'https://via.placeholder.com/150'},
    {'name': 'Viper', 'image': 'https://via.placeholder.com/150'},
  ];

  final List<Map<String, String>> _plans = [
    {
      'title': 'Visit Museum',
      'image': 'data:image/jpeg;base64,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'
    },
    {
      'title': 'Dinner at 7 PM',
      'image': 'data:image/jpeg;base64,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'
    },
    {
      'title': 'Yoga Session',
      'image': 'data:image/jpeg;base64,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'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Greeting Message
              Text(
                String.fromCharCodes([
                  0x0928, 0x092E, 0x0938, 0x094D, 0x0924, 0x0947, 0x002E, 0x002E, 0x1F64F
                ]), // 'नमस्ते..' in Unicode
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 9),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: ' from ',
                      style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                        color: Colors.black, // Orange color for "India"
                      ),

                    ),
                    TextSpan(
                    text: ' India',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange, // Orange color for "India"
                    ),

                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
        
              // Nearby People Section
              Text(
                'Nearby People',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 7),
              Container(
                height: 170,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _profiles.length,
                  itemBuilder: (context, index) {
                    final profile = _profiles[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16), // Rounded corners
                        ),
                        elevation: 4, // Shadow
                        child: Container(
                          padding: EdgeInsets.all(16),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage: NetworkImage(profile['image']!),
                              ),
                              SizedBox(height: 8),
                              Text(
                                profile['name']!,
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 8),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Message',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.purple,
                                  ),
                                ),
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    side: BorderSide(color: Colors.purple),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
        
              // Upcoming Plans Section
              Text(
                'Upcoming Plans',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Container(
                height: 150, // Fixed height for the horizontal scrolling
                child: ListView.builder(
                  scrollDirection: Axis.horizontal, // Horizontal scrolling
                  itemCount: _plans.length,
                  itemBuilder: (context, index) {
                    final plan = _plans[index];
                    return Container(
                      margin: EdgeInsets.only(right: 16), // Spacing between items
                      width: 250, // Fixed width for each plan card
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 6,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          // Image of the place
                          ClipRRect(
                            borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(12)),
                            child: Image.network(
                              plan['image']!,
                              height: 100,
                              width: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          // Details (Title and Address)
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    plan['title']!,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    '123, Example Street, City',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.grey[600]),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}