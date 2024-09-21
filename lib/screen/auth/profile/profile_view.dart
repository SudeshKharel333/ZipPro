import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Profile Picture
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'https://example.com/profile_pic.jpg'), // Replace with actual URL or Asset
            ),
            SizedBox(height: 20),

            // User Name
            Text(
              'John Doe', // User's name
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),

            // User Email
            Text(
              'johndoe@example.com', // User's email
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),

            SizedBox(height: 30),

            // Additional Details Section
            Expanded(
              child: ListView(
                children: [
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.phone),
                      title: Text('Phone'),
                      subtitle: Text('+123 456 7890'), // User's phone number
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.location_on),
                      title: Text('Address'),
                      subtitle:
                          Text('123 Main St, City, Country'), // User's address
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.cake),
                      title: Text('Birthday'),
                      subtitle: Text('January 1, 1990'), // User's birthday
                    ),
                  ),
                  // Add more details here
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
